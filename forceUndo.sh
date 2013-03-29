#!/bin/sh
#
# Undo any custom CSS injected forcefully
# NOTE: This will remove legitimate custom CSS the user might have
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

rm "$CUSTOM_CSS_PATH/Custom.css"
rm "$CUSTOM_CSS_PATH/Custom.css.backup"
