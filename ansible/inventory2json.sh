#!/bin/sh
if [ "$1" = "--list" ] ; then
    cat $(dirname "$0")/inventory.json
elif [ "$1" = "--host" ]; then
    echo "{}"
fi
