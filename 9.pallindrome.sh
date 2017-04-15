#!/bin/sh
isPallindrome() {
    num=$1
    r=0
    while (( num > 0 ))
    do
        d=$(( num % 10 ))
        r=$(( (r * 10) + d ))
        num=$(( num / 10 ))
    done

    if (( r == $1 ))
    then
        echo "$1 is pallindrome."
    else
        echo "$1 is NOT pallindrome."
    fi
}

isPallindrome $1