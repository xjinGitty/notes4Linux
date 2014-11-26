#!/bin/bash
# Program:
#     this script file will be used for any trial of the exercising
# History:
#     2014-8-25; xjin; original created
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# cmd for list ip addr
#ifconfig|grep 'inet addr:'|awk '{print $2}'|cut -f 2 -d ":"

# cmd for print the info of users included in /etc/passwd file
for userS in $(cut -d ':' -f 1 /etc/passwd)
do
    finger $userS
done

# cmd used to check 100 sub-ip 's ping connection
ipAddr='147.2.212'
for m in $(seq 1 5)
do 
    ping -c 1 -w 1 ${ipAddr}.$m &> /dev/null && result=0 || result=1
    
    if [ "$result" == 0 ]; then
        echo "connection to  ${ipAddr}.$m  is available"
    elif [ "$result" == 1 ]; then 
        echo "ip address  ${ipAddr}.$m   is not reachable"
    else
        echo "unknow hostip ${ipAddr}.$m"
    fi
done

# cmd used to let user input a directory and then output the perm for files in the directory
read -p "you could input a directory, and then I give you the perm for each file in the directory \n" dirP

#    check if the input directory exist
if [ "$dirP" == "" -o ! -d $dirP ]; then
    echo -e "the directory $dirP you input do not exist in your system, will exit"
    exit 1
fi

#    to print perm for each file in the directory
for file in $(ls $dirP)
do
    perm=""
    test -r $file && perm="$perm readable"
    test -w $file && perm="$perm writeble"
    test -x $file && perm="$perm executable"
    echo "${file}\'s perm is $perm"
done
