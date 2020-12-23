#! /usr/bin/bash
# if , elif , else , nested if

# If is statement
a=10
b=10
if [ $a = $b ]
then
    echo "A is Equal to B"
fi

# If Else Statement
c=10
d=8
if [ $c = $d ]
then
    echo "A is Equal to B"
else
    echo "Nope it's Flase"
fi

# Elif Statement

e=10
f=20
if [ $e = $f ]
then
    echo "A is Equal to B"
elif [ $e -gt $f ]
then
    echo "A is Greater then B"
elif [ $e -lt $f ]
then
    echo "A is Less then B"
else
    echo "Nope it's False"
fi