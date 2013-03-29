#!/bin/sh
#
# Adds a very quick, but intense, blur to the page
#

# Setup environment

set -e
CUSTOM_CSS_PATH=""

# Determine OS

unamestr=`uname -s`
if [ "$(uname -s)" = "Linux" ]; then
   CUSTOM_CSS_PATH="$HOME/.config/chromium/Default/User StyleSheets"
elif [ "$(uname -s)" = "Darwin" ]; then
   CUSTOM_CSS_PATH="$HOME/Library/Application Support/Google/Chrome/Default/User StyleSheets"
else
	exit 1
fi

# Setup files
mkdir -p "$CUSTOM_CSS_PATH"
touch "$CUSTOM_CSS_PATH/Custom.css"

# Undo the changes if we've done this before
# else make a backup
if [ -f "$CUSTOM_CSS_PATH/Custom.css.backup" ]; then
	rm "$CUSTOM_CSS_PATH/Custom.css"
else
	cp "$CUSTOM_CSS_PATH/Custom.css" "$CUSTOM_CSS_PATH/Custom.css.backup"
fi

#Do it!
echo 'body{-webkit-animation:blur 30s infinite}@-webkit-keyframes blur{0%{-webkit-filter:blur(0px)}49%{-webkit-filter:blur(0px)}50%{-webkit-filter:blur(1px)}51%{-webkit-filter:blur(0px)}100%{-webkit-filter:blur(0px)}}' >> "$CUSTOM_CSS_PATH/Custom.css"