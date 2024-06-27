#!/bin/bash
echo "Download the prometheus binaries"
if [ -e /home/ubuntu/prometheus-2.53.0.linux-amd64.tar.gz ];
then
   echo "file is already existing so no need to download "
   tar -zxvf /home/ubuntu/prometheus-2.53.0.linux-amd64.tar.gz 
else
   echo "binary does not exists in system first we need to download it"
   wget https://github.com/prometheus/prometheus/releases/download/v2.53.0/prometheus-2.53.0.linux-amd64.tar.gz
   tar -xzvf /home/ubuntu/prometheus-2.53.0.linux-amd64.tar.gz
   echo "file has been extracted , you can start prometheus"
fi


prometheus.io/download




#!/bin/bash
echo "Download the Prometheus binaries"

# Define variables for file paths and URLs
FILE_PATH="/home/ubuntu/prometheus-2.53.0.linux-amd64.tar.gz"
DOWNLOAD_URL="https://github.com/prometheus/prometheus/releases/download/v2.53.0/prometheus-2.53.0.linux-amd64.tar.gz"
EXTRACT_DIR="/home/ubuntu/prometheus-2.53.0"

# Check if the file already exists
if [ -e "$FILE_PATH" ]; 
then
    echo "File already exists, so no need to download."
else
    echo "Binary does not exist in the system; downloading it now."
    wget -O "$FILE_PATH" "$DOWNLOAD_URL"
fi

# Extract the file
tar -xzvf "$FILE_PATH" -C /home/ubuntu/

echo "File has been extracted, you can start Prometheus."
