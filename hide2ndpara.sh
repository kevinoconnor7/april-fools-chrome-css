#!/bin/sh
#
# Hides every 2nd paragraph on the page
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
echo 'p:nth-child(2){display:none!important}' >> "$CUSTOM_CSS_PATH/Custom.css"
