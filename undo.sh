#!/bin/sh
#
# Undo any custom CSS injected gracefully
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

#Cleanup if we've been here

if [ -f "$CUSTOM_CSS_PATH/Custom.css.backup" ]; then
	rm "$CUSTOM_CSS_PATH/Custom.css"
	cp "$CUSTOM_CSS_PATH/Custom.css.backup" "$CUSTOM_CSS_PATH/Custom.css"
	rm "$CUSTOM_CSS_PATH/Custom.css.backup"
fi
