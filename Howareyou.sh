##Howareyou.sh 
#!/bin/bash
#
echo how are you ? 
read BLAH
BLAH=`echo $BLAH | tr a-z A-Z`
 [ -z $BLAH ] && exit 1

case $BLAH in
	GOOD)
	echo nice!
	;;
	BAD)
	echo too bad for you 
	;;
	*)
	echo I don\'t understand your answer
	;;
esac
