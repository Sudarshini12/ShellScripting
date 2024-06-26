#!/bin/bash
echo "This script delete files which are older than 30 days  "
path="$1"
echo $path
find $path  -mtime +30 -delete
if [[ $? -eq 0 ]];
then
   echo "Files are successfully deleted "
else
   echo "deleteion was having some issue"
fi




To dislay a message if there are no files older than 30 days


#!/bin/bash
echo "This script deletes files older than 30 days."
path="$1"
echo "Checking path: $path"

# Check if there are any files older than 30 days
file_count=$(find "$path" -type f -mtime +30 | wc -l)

if [ $file_count -gt 0 ]; then
    # Delete the files older than 30 days
    find "$path" -type f -mtime +30 -delete
    if [[ $? -eq 0 ]]; then
        echo "Files older than 30 days were successfully deleted."
    else
        echo "There was an issue deleting the files."
    fi
else
    echo "There are no files older than 30 days."
fi




#!/bin/bash
echo "This script deletes files older than 30 days."
path="$1"
echo "Checking path: $path"

# Check if there are any files older than 30 days
file_count=$(find "$path" -type f -mtime +30 | wc -l)

if [ $file_count -eq 0 ]; then
    echo "There are no files older than 30 days."
elif find "$path" -type f -mtime +30 -delete; then
    echo "Files older than 30 days were successfully deleted."
else
    echo "There was an issue deleting the files."
fi
