#! /usr/bin/bash

# Progarm--> download the robots.txt file in enter the URL

# In Linux wget is used to download the file in particular domain

# $URL/robots.txt --> like www.sxcce.edu.in/robots.txt
# 2> /dev/null is trash , like recycle bin
# /dev/null is trash , like recycle bin
# 2> is throung the error

# robots.txt used for SEO purpose
# wp-admin is sensitive file it's show disallow , don't worring

# grep --> extract Diallow file only
# cat robots.txt | grep Disallow ====> Disallow: /wp-admin

# awk --> Extract data
# cat robots.txt | grep Disallow | awk '{print $2}' ==> /wp-admin

read -p "Enter the URL or IP Address --> " URL
echo

# For checking the site is crt or not
function check_url()
{
    # ping -c 1 -->One Time Ping Panne Paru ; 2 means error ; 1 means output
    # Here error and output vanathaluim dev/null ikku send pannu
    ping -c 1 $URL > /dev/null 2>&1
    # Check exit status
    if [ $? != 0 ]
    then
        echo "Invalid URL"
        echo "TRY AGAIN"
        exit
}
# Check the empty prompt -z
if [ -z $URL ]
then
    echo "Please enter the website"
    echo "TRY AGAIN"
    exit
fi
# Function calling
check_url
echo "CRAWLING"
echo
wget $URL/robots.txt 2> /dev/null
echo "Got Robots.txt"
echo "Working"
cat robots.txt | grep Disallow | awk '{print $2}' > tmp # o/p store in tmp
echo "*****************************************"
# diaplay tmp
cat tmp
echo "*****************************************"
# For space
echo

echo "------------ STATUS CODE -----------"
# curl tool used to sent a request to server via CIL
#---- man curl for read the document -----
#curl -I https://www.sxcce.edu.in
# curl  -I --> Get ; curl -o --> to save the output_file ; -s --> Silent

#curl -o /dev/null -s -I -w"%{http_code} https://www.sxcce.edu.in" "https://www.sxcce.edu.in"  ==> 200 https://www.sxcce.edu.in

input=$(cat tmp)
curl -o /dev/null -s -I -w"%{http_code} https://$URL$input\n" "https://$URL$input" >> response_code.txt

cat response_code.txt

echo
read -p "Press <enter> to open in your browser"
    firefox -new-tab $URL$input & # Here & is used for background task

# Removing the file after finished the task
rm response_code.txt ; rm robots.txt
