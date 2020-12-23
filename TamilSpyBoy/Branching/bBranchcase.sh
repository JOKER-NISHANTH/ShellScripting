#! /usr/bin/bash

# case expression in
#     pattern)
#         statement
# esac

read -p "Enter your fav Tool --> " tool
case $tool in
    "nmap" )
    echo "Nmap is a network mapper";;
    "metasploit" )
    echo "msf is a best expoliting tool";;
    * ) # default
    echo "None of these"
esac