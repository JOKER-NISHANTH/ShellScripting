#! /usr/bin/bash

# j=1
# while [ $j -lt 10 ]
# do
#     echo "True"
#     exit # Like Break
# done

i=1
while [ $i -lt 10 ]
do
    echo $((i++))
done

# We can perform the arithmetic expression in bash shall
# eg:  echo (( 25+75 ))