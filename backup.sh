#!/bin/bash

# Run sh.sh script in the background and redirect output to a temporary file
nohup sh.sh > sh.tmp 2>&1 &

# Run trilium.sh script in the foreground and capture its output
./trilium.sh 2>&1 | tee -a sh.tmp

# Display the combined output of both scripts
cat sh.tmp

# Remove the temporary file
rm sh.tmp
