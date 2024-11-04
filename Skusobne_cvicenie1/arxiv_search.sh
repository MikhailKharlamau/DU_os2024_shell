#!/bin/bash
Q=$(echo "$@" | tr ' ' '+')
Adr="https://arxiv.org/search/?query=$Q&searchtype=all&source=header"
curl -s -L -A Lynx "$Adr"| 
tr -d '\n' | 
tr ' ' '\n' | 
grep -oP 'arXiv:[^<&?]+' |
tr -d 'arXiv:' |
sort | uniq 
