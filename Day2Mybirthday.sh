#!/bin/bash
# Program:
#    this scipt could be used to calculated days and hours left to your birthday
# History:
#    2014-8-26; xjin; original version
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# first input your birthday
read -p "input you birthday in format, ex >20140825 : " birthD

# check if input and value is valid
# if test -z $birthD || [ "$(grep '[0-9]\{8\}' $birthD)" == "" ]; then
if test -z $birthD; then
    echo "your need to input birthday like formatxxxxxxxx, will exit"
    exit 1
else
    now=$(date +%Y%m%d)
    if [ "$now" == "$birthD" ]; then
        echo "happy birthday~"
    elif [ "$now" gt "$birthD" ]; then
        passD = $(($((`date %Y%m%d +%s`-`date --date="birthD" +%s`))/60/60/24))
        echo  " your birthday was $passD ago"
    else
        comingD=$(($(($(date --date="$birthD" +%s)-$(date +%s)))/24/60/60))
        echo "there is $comingD left to your birthday"
    fi
fi 


# cmd used to create /temp dir
if [ ! -e /temp ]; then
   echo "not exist, will create one"
   mkdir /temp
else
   echo "exist"
   if [ -f /temp ]; then
      echo "exist the file, will delete and create the directory"
      rm -rf /temp
      mkdir /temp
   elif [ -d /temp ]; then
      echo "exist the directory, will delete it, and then touch the file"
      rm -rf /temp
      touch /temp; chmod 777 /temp; echo "new create" > /temp
   fi
fi

