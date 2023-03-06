#!/bin/bash

# File path and command variables
file_path="/root/p.txt"
cmd="${HOME}/.google-drive-upload/bin/gupload -o /root/trilium-data/document.db -c db"
file_md5=$(md5sum "$file_path" | awk '{print $1}')

while true; do
    sleep 600
    new_md5=$(md5sum "$file_path" | awk '{print $1}')
    if [ "$new_md5" != "$file_md5" ]; then
        file_md5=$new_md5
        eval "$cmd"
    fi
done
