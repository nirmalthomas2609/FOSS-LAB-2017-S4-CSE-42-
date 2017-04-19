#!/bin/sh

check_mem_val=10.0
check_cpu_val=10.0

while(true)
do
  #echo "i am also working"
  ps -e -o pmem=,pcpu=,pid=,user=,comm= --sort=-pmem |
  while read size cpu pid user comm
  do
    #echo $size
    kill_mem=0
    kill_cpu=0
    if [ "$user" = "rohit@rohit-Vostro-3546" ]
    then
      kill_mem=$( echo "$size>$check_mem_val" | bc )
      kill_cpu=$( echo "$cpu>$check_cpu_val" | bc )
      #echo $kill_mem
      #echo $kill_cpu
      if [ "$kill_mem" = "1" ]
      then
       	#echo "kill $pid # $size $user $comm due to mem usage"
        kill $pid # $size $user $comm
      elif [ "$kill_cpu" = "1" ]
      then
        #echo "kill $pid # $size $user $comm due to cpu usage"
        kill $pid # $size $user $comm
      else
        continue
      fi
    fi
  done
  sleep 1
done