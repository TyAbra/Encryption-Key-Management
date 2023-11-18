#!/bin/bash

#This is verifying that it takes a single argument, a single argument in this case is the file path

if [ $# -ne 1 ]; then
	echo "Usage: $0 <file_to_sign>"
	exit 1
fi

#First positional argument
#Timestamp code

file_to_sign="$1"
timestamp=$(date +%Y-%m-%d\ %H:%M:%S)

#Echos the timestamp of file before signing

echo "Timestamp: $timestamp" >> "$file_to_sign"

#Signs the file with dig sig and adds .sig extension

openssl dgst -sha256 -sign goldkey.pem -out "$file_to_sign.sig" "$file_to_sign"

echo "File '$file_to_sign' signed with timestamp."