#!/bin/sh
factorial() {
    num=$1
    result=1
    while (( num > 1 ))
    do
        result=$(( result * num ))
        num=$(( num - 1 ))
    done

    echo "The factorial of $1 is: $result"
}

factorial $1