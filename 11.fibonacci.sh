#!/bin/sh

fibo() {
    typeset -i range=$1
    if (( $range == 0 ))
    then 
        echo ""
        exit 0
    elif (( $range == 1 ))
    then
        echo "1 "
        exit 0
    fi

    first_num=1
    last_num=1
    range=$(( $1 - 2 ))
    
    echo "$first_num $last_num \c"

    while (( range > 0 ))
    do
        next_num=$(( $first_num + $last_num ))
        first_num=$last_num
        last_num=$next_num
        range=$(( $range - 1 ))
        echo "$next_num \c"
    done
    echo ""
}

fibo $1