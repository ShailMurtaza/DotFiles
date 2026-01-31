#!/bin/bash

# Check if at least two parameters are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <zip_file_name> <file1> <file2> ... <fileN>"
    exit 1
fi

# Extract zip file name from the first parameter
zip_file="$1"
shift  # Remove the first parameter from the list

# Check if name for zipfile is provided or not
if [[ "$zip_file" == ".zip" ]]; then
    echo "Please provide filename for ZIP"
    exit 1
fi

# Check if zip file already exists
if [ -f "$zip_file" ]; then
    echo "Error: Zip file '$zip_file' already exists. Please choose a different name."
    exit 1
fi

# Check if all files/directories to be zipped exist
for item in "$@"; do
    if [ ! -e "$item" ]; then
        echo "Error: File or directory '$item' does not exist."
        exit 1
    fi
done

# Zip all files
zip -r "$zip_file" "$@"

