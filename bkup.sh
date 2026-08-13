#!/bin/bash
str_date=$(date "+%D"|tr '/' '-')
ls /tmp/HomeDirectory/"${str_date}.tar.gz" 2> /dev/null
flag=$?
if [ $flag!=0 ] ; then
    exit 0
fi 
mkdir -p /tmp/HomeDirectory
tar -czf "${str_date}.tar.gz" "$HOME"
mv ./${str_date}.tar.gz /tmp/HomeDirectory



