#!/bin/bash

if [ $# -lt 2 ]; then
    echo "USAGE: $0 filesdir searchstr"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "$1 is not a directory!!!"
    exit 1
fi

echo "The number of files are $(find $1 -type f | wc -l)
and the number of matching lines are $(grep -rH $2 $1 | wc -l)"
