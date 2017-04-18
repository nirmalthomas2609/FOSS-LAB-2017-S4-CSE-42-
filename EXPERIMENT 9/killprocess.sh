#!/usr/bin/bash

#max cpu % load
MAX_CPU=90
#max execution time for CPU percentage > MAX_CPU (in seconds 7200s=2h)
MAX_SEC=1800
#sort by cpu
SORTBY=9

#define a processes command name to check
declare -a KILLLIST
KILLLIST=("/usr/sbin/apache2" "/usr/bin/php5-cgi")

#iterate for each process to check in list
for PROCESS_TOCHECK in ${KILLLIST[*]}
do

    #retrive pid with top command order by SORTBY
    PID=$(top -bcSH -n 1 | grep $PROCESS_TOCHECK | sort -k $SORTBY -r | head -n 1 | awk '{print $1}')

    CPU=$(top -p $PID -bcSH -n 1 | grep $PROCESS_TOCHECK | sort -k $SORTBY -r | head -n 1 | awk '{print $9}')
    TIME_STR=$(top -p $PID -bcSH -n 1 | grep $PROCESS_TOCHECK | sort -k $SORTBY -r | head -n 1 | awk '{print $11}')

    # Decode the top CPU time format [dd-]hh:mm.ss.
    TIME_SEC=0
    IFS="-:" read c1 c2 c3 c4 <<< "$TIME_STR"

    #with top command time format is hh:mm.ss, so truncare seconds in c2
    c2=${c2%%.*}

    if [ -n "$c4" ]
    then
      TIME_SEC=$((10#$c4+60*(10#$c3+60*(10#$c2+24*10#$c1))))
    elif [ -n "$c3" ]
    then
      if [ "$CMD" = "ps" ]; then
        TIME_SEC=$((10#$c3+60*(10#$c2+60*10#$c1)))
      else
        TIME_SEC=$(((10#$c3*24)*60*60)+60*(10#$c2+60*10#$c1))
      fi
    else
      if [ "$CMD" = "ps" ]; then
        TIME_SEC=$((10#0+(10#$c2+60*10#$c1)))
      else
        TIME_SEC=$((10#0+60*(10#$c2+60*10#$c1)))
      fi
    fi

    #check if need to kill process
    if [ "$CPU" -gt $MAX_CPU ] && [ "$TIME_SEC" -gt $MAX_SEC ]; then
        kill -15 $PID
    fi

done
