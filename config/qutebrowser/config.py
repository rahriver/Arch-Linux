# <--------- General Settings ---------> #
# Default page
# c.url.default_page = 'https://www.google.com/'
# c.url.start_pages = 'https://www.google.com/'

c.url.default_page = '~/.config/qutebrowser/StartPage/start.html'
c.url.start_pages = '~/.config/qutebrowser/StartPage/start.html'

c.downloads.location.directory = '~/Temp'
config.load_autoconfig(False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
# Load images automatically in web pages.
config.set('content.images', True, 'chrome-devtools://*')
# Load images automatically in web pages.
config.set('content.images', True, 'devtools://*')
# Enable JavaScript.
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
# Enable JavaScript.
config.set('content.javascript.enabled', True, 'devtools://*')
# Enable JavaScript.
config.set('content.javascript.enabled', True, 'chrome://*/*')
# Enable JavaScript.
config.set('content.javascript.enabled', True, 'qute://*/*')
# File manager
config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ['kitty', '--class', 'Ranger, Ranger', '-e', 'ranger', '--choosefile', '{}'])
config.set("fileselect.multiple_files.command", ['kitty', '--class', 'Ranger, Ranger', '-e', 'ranger', '--choosefiles', '{}'])
# Dark mode
# config.set("colors.webpage.darkmode.enabled", True)

# <--------- Keybindings ---------> #
# CSS Sheets
config.bind(',ap', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/QuteCSS/css/apprentice/apprentice-all-sites.css ""')
config.bind(',dr', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/QuteCSS/css/darculized/darculized-all-sites.css ""')
config.bind(',gr', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/QuteCSS/css/gruvbox/gruvbox-all-sites.css ""')
config.bind(',sd', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/QuteCSS/css/solarized-dark/solarized-dark-all-sites.css ""')
config.bind(',sl', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/QuteCSS/css/solarized-light/solarized-light-all-sites.css ""')

# Bindings for normal mode
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Z', 'hint links spawn alacritty -e youtube-dl {hint-url}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')

c.url.searchengines = {
        'DEFAULT': 'https://www.google.com/search?q={}',
        'aw': 'https://wiki.archlinux.org/?search={}',
        'yt': 'https://www.youtube.com/results?search_query={}',
        }

# <--------- Fonts ---------> #
c.fonts.statusbar = '11pt Segoe UI Variable Static Text'
c.fonts.default_family = '"Segoe UI Variable Static Text"'
c.fonts.default_size = '11pt'
# Font used in the completion widget.
c.fonts.completion.entry = '11pt "Source Code Pro"'
# Font used for the debugging console.
c.fonts.debug_console = '11pt "Segoe UI Variable Static Text"'
# Font used for prompts.
c.fonts.prompts = 'default_size Segoe UI Variable Static Text'

# <--------- Colors ---------> #
c.colors.completion.fg = ['#9cc4ff', 'white', 'white']
# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = '#1c1f24'
# Background color of the completion widget for even rows.
c.colors.completion.even.bg = '#232429'
# Foreground color of completion widget category headers.
c.colors.completion.category.fg = '#e1acff'
# Background color of the completion widget category headers.
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #000000, stop:1 #232429)'
# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = '#3f4147'
# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = '#3f4147'
# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = '#282c34'
# Background color of the selected completion item.
c.colors.completion.item.selected.bg = '#ecbe7b'
# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = '#c678dd'
# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = '#c678dd'
# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = 'white'
# Background color for the download bar.
c.colors.downloads.bar.bg = '#282c34'
# Background color for downloads with errors.
c.colors.downloads.error.bg = '#ff6c6b'
# Font color for hints.
c.colors.hints.fg = '#282c34'
# Font color for the matched part of hints.
c.colors.hints.match.fg = '#98be65'
# Background color of an info message.
c.colors.messages.info.bg = '#282c34'
# Background color of the statusbar.
c.colors.statusbar.normal.bg = '#282c34'
# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = 'white'
# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = '#497920'
# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = '#34426f'
# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = '#282c34'
# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = 'yellow'
# Background color of the tab bar.
c.colors.tabs.bar.bg = '#1c1f34'
# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = '#282c34'
# Background color of unselected even tabs.
c.colors.tabs.even.bg = '#282c34'
# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = '#282c34'
# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = '#282c34'
# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = 'seagreen'
# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = 'darkseagreen'
# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = '#282c34'
# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = '#282c34'

# <--------- Startup ---------> #
c.statusbar.show = 'in-mode'
c.tabs.show = 'never'
