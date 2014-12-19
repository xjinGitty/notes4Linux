#! /bin/bash

#####################################################################################################################################################
###### this simple script is used for automatically collecting log files when issue show up, hope could help you during the bug reporting 
#  History:
## original ver: v1.0
## author: xjin (xjin@suse.com)
## from: 2014-12-18
#####################################################################################################################################################


#####################################################################################################################################################
##### variables and functions declaration
#####################################################################################################################################################
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
VDATE=`date +%y%m%d-%H:%M:%S`

function printOption(){
echo -e "
usage: logcol -[options] (components)  
options: 
\t -h: will print this options manual  

components: 
\t instaler: this will collect logs when you would like to report bugs related with installer
\t firefox: this will collect log files related with firefox component 
\t yast2: this will collect both yast2 and zypper related log files 
\t printer: this will collect log files for printer issue 
\t network: this will collect log files for network issue

scenaros: 
\t boot: this wil collect log files for debugging issue happens during boot\n"
}

#####################################################################################################################################################
##### options setting:
#####################################################################################################################################################
if [ "$1" == "" ]; then
	echo -e "input should not be empty, refer to the usage below  \n"
	printOption && exit 0
elif [ "$1" == "-h" ]; then
	printOption && exit 0
else
	if [ "$1" == "installer" ]||[ "$1" == "firefox" ]||[ "$1" == "yast2" ]||[ "$1" == "printer" ]||[ "$1" == "network" ]||[ "$1" == "boot" ]; then
		echo -e "Begin log files collection, pls wait..."
	else
		echo -e "Pls check your input, now the supported components or scenarios pls find below \n"
		printOption && exit 0
	fi
fi

#####################################################################################################################################################
##### general system and hardware info collectiong
#####################################################################################################################################################
### make directory to store log files
if [ -d logFileD ]; then
	rm -rf logFileD
	echo "Removed the exist old log files folder!"
else
	mkdir logFileD; cd logFileD
fi

### cpuInfo
echo -e "CPU info: \n" > generalInfo.txt
cat /proc/cpuinfo |grep 'model name'|uniq -c >> generalInfo.txt
echo -n "cpuInfo, "
### partitionInfo
echo -e "\nPartition Table info:\n" >> generalInfo.txt
fdisk -l /dev/sda >> generalInfo.txt
echo -n "harddiskInfo, "
### osInfo
echo -e "\nOS info:\n" >> generalInfo.txt
cat /etc/YaST2/build >> generalInfo.txt
echo -n "osInfo, "
### mountInfo
echo -e "Mount point info:\n" >> generalInfo.txt
mount >> generalInfo.txt
echo -n "mountInfo, "
### network
echo -e "\nNetwork info:\n" >> generalInfo.txt
lspci -nnk |grep 'Network' -n -A3 --color=auto >> generalInfo.txt
hwinfo --netcard >> generalInfo.txt
echo -n "and netcardInfo has been collected. 
Pls find generalInfo.txt file for details. 

"
#####################################################################################################################################################
##### dealing with the specific components log file
#####################################################################################################################################################
case $1	in 
"installer")
	cp /var/log/pbl.log .
	journalctl -b > journal.txt
	tar -zcvf log-${VDATE}.tar.gz pbl.log journal.txt generalInfo.txt
	echo -e "log files related to installer has been collected \n"
	;;

"firefox")
	echo -e "\n \t firefox related logs will be collected, you could refer to [http://fedoraproject.org/wiki/How_to_debug_Firefox_problems] for a little deep debugging to make sure issue you met was a real problem:)"
	# about:support will be helpful for issue debuging
	# cp /var/log/
	echo -e "log files related to firefox has been collected \n"
	;;

"yast2")
	cp /var/log/YaST2/y2log .
	cp /var/log/zypper.log .
	cp -a /var/log/zypp zypp
	journal -b > journal.txt
	tar -zcvf log-${VDATE}.tar.gz y2log zypper.log zypp journal.txt
	echo -e "log files related with yast2 has been collected \n"
	;;

"printer")
	cp -a /var/log/cups cups
	journal -b > journal.txt
	cp /var/log/YaST2/y2log .
	tar -zcvf log-${VDATE}.tar.gz journal.txt y2log cups
	;;

"network")
	ifconfig >ifconfigInfo.txt
	journalctl -u NetworkManager-dispatcher.service -u NetworkManager.service > network.txt
	tar -zcvf log-${VDATE}.tar.gz ifconfigInfo.txt network.txt generalInfo.txt
	echo -e "log files related with network has been collected \n"
	;;
esac

#####################################################################################################################################################
##### remove created log files and send tar log to remote server
#####################################################################################################################################################
### rm all log files
if [ -f log-${VDATE}.tar.gz ]; then
	mv log-${VDATE}.tar.gz ../.
	rm -rf logFileD
	echo "Temporary log files has been deleted"
else
	echo "Seems there is issue to create the log tar file"
fi
### send tar log file to remote/ nfs server

