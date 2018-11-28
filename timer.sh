 ## timer.sh 
#!/bin/bash
COUNTER=$1
COUNTER=$(( COUNTER * 60 ))
maineen() {
	  COUNTER=$(( COUNTER -1 ))
          sleep 1
}
while [$COUNTER -gt 0 ]
do 
	echo you still have $COUNTER seconds
        maineen
done
[ $COUNTER = 0 ] && echo out of time && maineen
[ $COUNTER = "-1" ] && echo you are one second late  && maineen

while true
do
	echo you are ${COUNTER#*-} seconds late 
	maineen
done
