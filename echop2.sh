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
	echo ${dir}/csv/
	java -cp .:./FsGame.jar:./lib/* test.CsvToLua excel_csv /Users/codingdd/Work/hhw_csv/hhw_excel/DB_Hall_attr.xlsx /Users/codingdd/Work/hhw_csv/hhw_excel/csv 
    	echo '$@' $key
    fi
done
