#!/bin/bash
# Program name: pingall.sh
i=0
hst_name=( $(awk '{print $1}' class.txt) )
cat class.txt | awk '{print $2}' | while read hst_ip
do
   ping -t 1 -c 1 $hst_ip > /dev/null
   echo_ans=`echo $?`
     if [ $echo_ans -eq 0 ]; then
         echo "${hst_name[$i]}  $hst_ip  is  up";
     else
         echo "${hst_name[$i]}  $hst_ip  is  down";
     fi
         i=`expr $i + 1`
