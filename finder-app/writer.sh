#!/bin/bash

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Error: Invalid number of arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p $(dirname "$writefile")

# Attempt to create or overwrite the file with writestr
if [ -w $(dirname "$writefile") ]; then
    echo "$writestr" > "$writefile"
else
    echo "Error: No write permissions for ${writefile}."
    exit 1
fi

# Success
exit 0
