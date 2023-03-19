#!/usr/bin/env sh
cmd=/Users/yamazakitakahiro/go/bin/bcoin
EXIST=$(which $cmd)
if [ "$EXIST" == "$ERR" ] ;then
    sketchybar --set $NAME label="$EXIST no" drawing=on
    exit 0
fi

PRICE=$($cmd)
display=$(printf "%.1f" $PRICE)
if [ "$PRICE" != "" ]; then
    sketchybar --set $NAME label="$display" drawing=on
else
    sketchybar --set $NAME label="save" drawing=on
fi
