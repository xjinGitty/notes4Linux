1. all the tool should support the regular expression

2. grep: 
--command options: 
--the specific simbols: [:upper:]...
--[] could be used for the common express
--^ and $ for at the beginning or at the end '^'or '\.$'   # the specific meaning for . will be introduced later, so the \ is mandatory
--the specific . and * for common express: must have one and repeat times

--for specific num finding: grep '[0-9][0-9]*' file     #??why there need 2 []
--grep -n 'go\{2,5\}d'     # here for the {} has specific meaning in shell so use \ here
--if just want to search the line contain with', use grep \' file

--the specific meaning for * and . in shell and in regular express: 0 to many charactor; and 0 to many times repeat


3. sed:
--nl /etc/passwd |sed '2a hello word'   # i a d , \(for more than 2 lines)
--replace: nl /etc/passed |sed '2,5c hi line 2 to 5'   #
--nl file|sed -n '2,5p'   # just print the content between line2 and line5; and the -n is important
--nl file|sed -n 's/a/A/g' or nl file|grep '147.2.212.215'|sed 's/^.*://g'|sed '/^$/d'       # delete all of the content before 147... (ip addr) and last delete the blank line

--modify the file directly and do not use the pipe function
sed -i 's/\.$/\!/g     # if line end up with . then replace . with ! (for . has specific meaning \ is needed); how about !$??


4. extend regular express:egrep
--nl file |egrep -v '^$|^#'    # delete lines that is blank or start with #; egrep is same with grep -E
--specific options: + ? | () ()+
--eg: egrep 'g(la|oo)d' file     and another eg: egrep 'A(bc)+D'
--BTW ! do not have specific meaning in regu


5. printf:
--printf '%s\t %s\t \n' $(cat file|grep -v 'Name')    # print 3 colume except the line with the Name


6. awk:
compared with sed to deal with line, awk is more useful to deal with several segment in a line
--last -n 5|awk '{print $1 "\t" $3}'
--first save all of the para to $1 $2...then check the prequist if is under the condition third deal with it; each line repeat the 3 actions
--NF NR FS for saving num of seg; num of lines; space or the tab to be the seg mark; $0 means the total seg in a line
--last -n 5|sed "{print $1 "\t line:" NR "\t columes:" NF}'
--> < >- <= == !=     ; nl file| awk '{FS=":"} $3<10 {print $1 "\t" $3}'
--BEGIN: nl file| awk '{BEGIN FS=":" $3 < 10 {print $1 "\t" $3}'    #use BEGIN to make the settings to be used at the beginning	
--cat pay.txt|awk 'NR==1{printf "%10s %10s %10s\n", $1,$2,"total"} NR>=2{total=$1+$2 
print $1 $2 "total"}'    #; or enter could be used as the simbol for multi-command to be execute in awk   #\n should be used for line changing when printf is using     #and for the variables could be used without $ compared with shell env
--awk could used with if in {}   and  awk could be used for the loop but not introduced in this chap
--END


7. diff and other file compare tools (cmp)
--sed -e 'd4' -e 'c6 hello world' file > file.diff    # when there is more then one action, -e should be add as option
--diff -bBi file1 file1.diff
--diff /dir /dir2     # diff compared based on line and cmp based on byte


--patch is usefull when used together with diff: 
--diff -Naur file file.diff > file.patch
--patch -p0 <file.patch

8. chapter exercise:
1. grep '\*' $(find /etc/ -type file)|less
2. find / -type f| xargs -n 10 grep -l '\*'     #-l to just list the file name     #also when files is too many, xargs could be used
3. list ip addr: alias myip="ifconfig|grep '212'|sed 's/^.*inet addr://g'|cut -d ' ' -f 1"; MYIP=$(myip); echo $MYIP



### write at last when review
--to distinguish the bash and regular wildcard: when of which rule should be refer to???: to see if the tool support regular    ## grep 'h..' file and ls /etc/he??
--* just used together with .   not used seperately
--{}: grep -n 'go\{2,5\}d file     #could get good til goooood
--. and [] both for must have one charactor   * should together with . to be used   #[] has the same meaning with in shell
--delete and add then is the replace funtion to be used in format: '2,5dcp' also the select line could be print (shell viariable sed awk could be used to do the deletion
--is ! specific in shell or the regular???)
--| is used in egrep and the o+ means at least one o, o* means it could be zero ## all of * and + should be used together with the previous word; ? has the same rule
--awk for the line deal with work:


-- for the second time review:
-- . * and ? + : both used as the combination format
-- sed has line and charactor using method: d a c p    and 's///g'
-- and the option -i is for sed    $ is just for the last line(when is used in sed and without other para)
-- {} should be used with \
-- () and the {} and the [] has the differ with bash


-- awk has its own para: $1 and   $0 means the total line NF NR FS
