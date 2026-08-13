#!/bin/bash
str_date=$(date "+%D"|tr '/' '-')
mkdir -p /tmp/HomeDirectory
tar -czf "${str_date}.tar.gz" "$HOME"
mv ${str_date}.tar.gz /tmp/HomeDirectory
rm -f ./"${str_date}.tar.gz"


