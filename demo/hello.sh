#!/bin/bash -x

for file in *.txt
do
	fileName=`echo $file | awk -F. '{print $1}'`
	echo $fileName
	if [ -d $fileName ]
	then
		echo directory exist
		mv $file $fileName
	else
		mkdir $fileName
		echo created directory
		mv $file $fileName
	fi
done
