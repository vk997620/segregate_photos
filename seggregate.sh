#!/bin/bash
for file in *.jpg
do
	name=${file}
	year=$(echo $file|cut -d '-' -f 1)
	month=$(echo $file|cut -d '-' -f 2)
	if [ ! -d "$year/$month" ]; then
		mkdir -p $year/$month
	fi
	mv $name $year/$month/$name
done
