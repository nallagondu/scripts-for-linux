###  cat process.sh 
#!/bin/bash

PROCESS=httpd

COUNTER=0
while ps aux | grep $PROCESS | grep -v grep > /dev/null
do
	COUNTER=$((COUNTER+1))
	sleep 1
	echo  COUNTER is $COUNTER
done

logger PROCESSMONITOR: $PROCESS stopped at `date`
service $PROCESS start 
mail -s "$PROCESS  stopped" root
