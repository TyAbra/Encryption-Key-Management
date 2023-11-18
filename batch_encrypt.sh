#!/bin/bash

# Check if the public key file exists in your directory
if [ ! -f "bronzekey.pem" ]; then
	echo "Public key file not found: bronzekey.pem"
	exit 1
fi

# Loop through .txt file in the directory
for file in *.txt; do

# Check if there are any .txt files
if [ -f "$file" ]; then

#Encrypt the file using openssl and public key
encrypted_file="${file%.txt}.encrypted"

openssl pkeyutl -encrypt -pubin -inkey bronzekey.pem -in "$file" -out "$encrypted_file"


echo "Encrypted: $file -> $encrypted_file"

fi 

done

echo "Encryption complete."
