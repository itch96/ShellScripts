#!/bin/bash
function displayNumberOfFiles() {
    files=$(( $( ls -l | wc -l ) - 1 ))
    echo "Number of files in this directory are: $files"
    echo ""
}
function displayNumberOfSubdirectories() {
    typeset -i subdirectories=0
    file * | while
        read filename filetype rest
    do
        if [ $filetype = "directory" ]
        then
            subdirectories+=1
            # echo "directory $subdirectories"
        fi
    done 
    echo "Number of Subdirectories in this directory: $subdirectories"
    echo ""
}
function displayNumberOfLinesContainingChar() {
    char=$1
    echo "Enter the filename: \c"
    read file

    echo "Number of lines in $file containing $char: \c"
    grep -c $char $file
    echo ""
}
function follow() {
    choice=$1
    case $choice in 
    1)
        displayNumberOfFiles
        showMenu
        ;;
    2)
        displayNumberOfSubdirectories
        showMenu
        ;;
    3)
        charToCount='y'
        displayNumberOfLinesContainingChar $charToCount
        showMenu
        ;;
    4)
        echo "Enter the filename: \c"
        read file
        head -1 $file
        tail -1 $file
        showMenu
        ;;
    5)
        exit 0
        ;;
    *) 
        echo "WRONG CHOICE. TRY AGAIN!"
        showMenu
        ;;
    esac
}
function showMenu() {
    echo "1.Display Number of files."
    echo "2.Display Number of Subdirectories."
    echo "3.Display Number of lines in a file containing 'y'."
    echo "4.Display first and the last line of the file."
    echo "5.EXIT"
    echo "Enter your Choice"
    read choice
    follow $choice
}
showMenu
