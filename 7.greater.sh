#!/bin/sh
if (( $1 > $2  &&  $1 > $3 )) 
then
    echo "$1 is the greatest."
else
    if (( $2 > $1 && $2 > $3 ))
    then
        echo "$2 is the greatest."
    else
        echo "$3 is the greatest."
    fi
fi