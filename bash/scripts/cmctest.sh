#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "$# args. Expected 1. 'input' or 'add'"
    exit 1
fi

if [ "$1" = 'input' ]
then
    for (( i = 1; i < 4; i++ ))
    do
        echo "Test $i"
        tmpfile=$(mktemp)
        python prog.py < "check/$i.in" > "$tmpfile"
        diff -ya --color "$tmpfile" "check/$i.out"
        rm "$tmpfile"
    done
elif [ "$1" = 'add' ]
then
    for (( i = 1; i < 4; i++ ))
    do
        echo "Test $i"
        tmpcode=$(mktemp)
        tmpfile=$(mktemp)
        cat prog.py > "$tmpcode"
        cat "check/$i.in" >> "$tmpcode"
        python "$tmpcode" > "$tmpfile"
        diff -ya --color "$tmpfile" "check/$i.out"
        rm "$tmpcode"
        rm "$tmpfile"
    done
else
    echo "Mod - $1. Expected 'input' or 'add'"
fi

