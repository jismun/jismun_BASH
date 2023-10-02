#!/bin/bash

mydir=$1
ext=$2

list=(0 1 2 3 4 5 6 7 8 9)

for file in $mydir/*
do
	for num in list
	do 
		if [ $(head -c1 $file) == $num ] ;
		then
			mv $file $file$ext
		fi
	done
done



