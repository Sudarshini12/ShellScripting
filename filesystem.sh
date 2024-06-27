#!/bin/bash
echo "this program get first 10 biggest files in the file system passed via positionl argument"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "this is the files in the filesystem $path"
cat /tmp/filesize.txt
