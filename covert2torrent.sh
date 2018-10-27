#!/bin/bash

###
# usage: script.sh "magnet_link"
###
# magnet link should be enclosed in quotes.

# Example:
# bash /path/to/script.sh "magnet:?xt=urn:btih:8a42938cb7512c1aa722fab7d2e432422d432d9a"

#cd /path/to/watchfile/directory
[[ "$1" =~ xt=urn:btih:([^&/]+) ]] || exit;
echo "d10:magnet-uri${#1}:${1}e" > "meta-${BASH_REMATCH[1]}.torrent"
