#!/bin/bash

if [ $# -lt 2 ]; then
    echo "USAGE: $0 destination string"
    exit 1
fi

echo $2 > $1

if [ ! -e $1 ]; then
    echo "$1 cannot be created!"
    exit 1
fi
