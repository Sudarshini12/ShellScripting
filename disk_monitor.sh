#!/bin/bash
#script check filesystem utilization every 120 seconds store in a file
while true
do 
date >> /var/log/fs-monitor.txt
sudo df -h >> /var/log/fs-monitor.txt
sleep 120
done 
