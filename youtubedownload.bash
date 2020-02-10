#!/bin/bash

if echo $3 | grep "http"; then
    opt="$1+$2"
    url="$3"
fi

if echo $2 | grep "http"; then
    opt="$1"
	url="$2"
fi

cmd="youtube-dl -f $opt --no-check-certificate $url"
echo $cmd
`$cmd`
