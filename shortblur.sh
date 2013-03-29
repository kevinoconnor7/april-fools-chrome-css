#!/bin/sh

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
echo 'body{-webkit-animation:blur 30s infinite}@-webkit-keyframes blur{0%{-webkit-filter:blur(0px)}49%{-webkit-filter:blur(0px)}50%{-webkit-filter:blur(1px)}51%{-webkit-filter:blur(0px)}100%{-webkit-filter:blur(0px)}}' >> "$CUSTOM_CSS_PATH/Custom.css"