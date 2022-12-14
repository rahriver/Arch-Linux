#!/bin/bash
#
# cover.sh - Download cover from Last.fm and overlay with image
#
# Florian <floriandejonckheere.be>
#
# bug: it detects the artist change twice

## CONFIGURATION ##
# Folder for cached album art
# Don't use ~, as conky will treat it as a regular directory name
CACHE="$HOME/.covers"
# API Key for Last.fm
APIKEY="0ec232b54b680a1fd8fe5d865342a969"
# Log file, only for debugging purposes
LOG=/tmp/conky-mpd.log

# Check for vital commands
CMD="mpc curl convert"
for CHECK in $CMD; do
	[ ! "$CHECK" ] && echo "Command $CHECK not found. Exiting." && exit 1
done
[ ! -d "$CACHE" ] && mkdir -p "$CACHE"

ARTIST="$(mpc --format %artist% | head -1)"
ALBUM="$(mpc --format %album% | head -1)"

TMP=/tmp/conkympd.tmp
[ ! -f $TMP ] && touch $TMP
[ "$(cat $TMP)" == "$ARTIST+$ALBUM" ] && echo "Same artist." >> $LOG && exit 0
echo "Artist changed: $ALBUM by $ARTIST" >> $LOG

#[ -f "/tmp/conkyCover.png" ] && rm "/tmp/conkyCover.png"
cp $HOME/.config/conky/conky-mpd/nocover.png /tmp/conkyCover.png
echo "NoCover" >> $LOG

COVER="$CACHE/$ARTIST - $ALBUM.jpg"
# Is cover cached?
if [ ! -f "$COVER" ]; then
# Nope. Download.
	echo "Downloading cover for $ARTIST - $ALBUM" >> $LOG
	# Download XML info
	curl --data-urlencode artist="$ARTIST" --data-urlencode album="$ALBUM" "http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$APIKEY" -o /tmp/lastfm.xml &> /dev/null
	echo "Exit: $?. Downloaded $(wc -l /tmp/lastfm.xml | cut -d' ' -f1) bytes." >> $LOG
	# Strip XML and download mega large cover to cache
	curl $(sed -n 's|<image size="mega">\(.*\)<\/image>|\1|p' /tmp/lastfm.xml) -o "$COVER" &> /dev/null
	echo "Exit: $?" >> $LOG
	echo "Downloaded to $COVER." >> $LOG
fi
# Copy cache for processing
echo "Copying $COVER." >> $LOG
cp "$COVER" /tmp/cover.jpg
# Downscale to fit overlay
convert /tmp/cover.jpg -resize 366 /tmp/cover.png >> $LOG
# Enlarge canvas to fit overlay
convert /tmp/cover.png -background none -extent 500x455-84-44 /tmp/cover.png >> $LOG
# Overlay overlay over cover
convert /tmp/cover.png $HOME/.config/conky/conky-mpd/case.png -composite /tmp/cover.png >> $LOG
# Resize for immediate use
convert /tmp/cover.png -resize 120 /tmp/conkyCover.png >> $LOG
# Set current artist
echo "$ARTIST+$ALBUM" > $TMP
#rm /tmp/cover.jpg /tmp/cover.png
