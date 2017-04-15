#!/bin/sh

acceptInput() {
    echo "Enter a number: \c"
    read num1
    echo "Enter another number: \c"
    read num2

    echo "1.Addition\t2.Subtraction\t3.Multiplication\t4.Division\t5.Exit"
    echo "Enter your choice: "
    read choice
    
    case "$choice" in
    1)
        add $num1 $num2
        acceptInput
        ;;
    2)
        subtract $num1 $num2
        acceptInput
        ;;
    3) 
        multiply $num1 $num2
        acceptInput
        ;;
    4)
        divide $num1 $num2
        acceptInput
        ;;
    5)
        exit 0
        ;;
    *) 
        echo "Wrong Coice. "
        echo "Enter Again."
        acceptInput
        ;;
    esac
}

add() {
    echo "The sum of $1 and $2 is: $(( $1 + $2 ))"
}

subtract() {
    echo "The difference of $1 and $2 is: $(( $1 - $2 ))"
}

multiply() {
    echo "$1 times $2 is: $(( $1 * $2 ))"
}

divide() {
    echo "$1 divided by $2 is: $(( $1 / $2 ))"
}

acceptInput