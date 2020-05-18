#!/usr/bin/env bash
if [ -z "$1" ];then
    echo "Expected latest, or a version"
else
    if [ "$1" == "latest" ]; then
        echo "Updating gradle with latest."
        gradle wrapper
    else
        echo "Updating gradle with $1"
        gradle wrapper --gradle-version $1
    fi
fi