#!/bin/bash

i=0;
while [ $i -lt 30 ]; do
	i=`expr $i + 1`

	process=`adb shell ps | grep -w com.yixia.videoeditor | head -1`
	#echo $process

	pid=`echo $process | awk '{print $2}'`
	#echo $pid

	rss=`echo $process | awk '{print $5}'`
	#echo $rss
	rss=`echo $(expr $rss / 1024)`

	time=`date  '+%Y-%m-%d %H:%M:%S'`
	#echo $time 

	echo $time"com.yixia.videoeditor内存使用为:"$rss"Mb"

	sleep 1
done

