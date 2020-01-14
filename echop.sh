#!/bin/bash
index=0
dir=""
for key in "$@"
do
    if [ $index -eq 0 ]
    then
	echo "sorce dir is $key"
	index=1
	dir=$key
    else
	cd /Users/codingdd/Work/rzbfb/svn/luoa.Ninja100/document/csv_to_lua
	echo ${dir}/$key
	java -cp .:./FsGame.jar:./lib/* test.CsvToLua excel_csv ${dir}/$key ${dir}/csv/ 
    	echo '$@' $key
    fi
done
