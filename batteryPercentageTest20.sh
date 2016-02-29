#!/bin/zsh
if [ $(upower -d | grep percentage | sed -n "1p" | sed -e 's/^.* //' | sed -e 's/%//') -lt 20 ]; then
    echo " "
fi
