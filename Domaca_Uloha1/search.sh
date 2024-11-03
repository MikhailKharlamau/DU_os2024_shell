#!/bin/bash
q=$(echo "$@" | tr ' ' '+')``
curl -s -L -A Lynx "https://www.bing.com/search?q=$q" | 
tr -d '\n' |
tr '<' '\n' |
grep -oP 'http[s]?://[^"]+'|
grep -v 'bing.com\|microsoft.com\|live.com\|w3.org\|bingj.com' |
sort|
uniq
