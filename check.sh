#!/bin/sh 

DIR="/home/komissar/Scripts/RPi_ping"

. $DIR/last_ip

CURRENT_IP=`/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
DATE=`date "+%Y-%m-%d %H:%M:%S"`

if [ "$LAST_IP" != "$CURRENT_IP" ]; then 
	cd $DIR
	echo "IP has changed!"
	echo "## ${DATE}" > last_ip
	echo "LAST_IP=$CURRENT_IP" >> last_ip
	git add -A
	git commit -m "IP changed on $DATE"
	git push
else
	echo "no changes"
fi





