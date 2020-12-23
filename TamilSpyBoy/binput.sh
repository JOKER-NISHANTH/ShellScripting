#! /usr/bin/bash

echo "HEllo World"

# User Input

echo "Enter your name : "
read input
echo $input

# Same Line Input vagaa , e is used to  get special char like / etc..

echo -ne "Enter your name : "
read x
echo $x

#======== Get input via read =======
# p is prompt
read -p "Enter your input : " variable
echo $variable

# t is donate the prom 30sec  ********* Doubt
# read -t30 "Enter your input : " var
# echo $vari

# s is used hide the input on prompt
read -s -p "Enter your input : " hide
echo $hide
