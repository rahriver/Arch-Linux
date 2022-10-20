#/bin/bash

. "${HOME}/.cache/wal/colors.sh"

pkill -f dunst
dunst \
	-frame_width 5 \
	-li "${HOME}/.config/dunst/tux.png" \
	-ni "${HOME}/.config/dunst/tux.png" \
	-ci "${HOME}/.config/dunst/this_is_fine.png" \
	-lfr "${color1}" \
	-nfr "${color1}" \
    -cfr "${color1}" \
    -lb "${color1}" \
	-nb "${color1}" \
	-cb "${color1}" \
	-lf "${color7}" \
	-cf "${color7}" \
	-nf "${color7}" &


	# -lb "${color0}" \
	# -nb "${color0}" \
	# -cb "${color0}" \
 



