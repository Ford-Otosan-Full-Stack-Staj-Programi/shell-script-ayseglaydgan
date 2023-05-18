#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <search_word> <directory>"
    exit 1
fi

search_word=$1
directory=$2

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist."
    exit 1
fi

# Use grep to find the word in the files
grep -rli "$search_word" "$directory"
