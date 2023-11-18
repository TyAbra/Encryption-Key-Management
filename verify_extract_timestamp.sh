#!/bin/bash

#Positional argument, if not met it displays error

if [ $# -ne 1 ]; then
	echo "Usage: $0 <file_to_verify>"
	exit 1
fi

file_to_verify="$1"

#Used to verify the digital signature

openssl dgst -sha256 -verify bronzekey.pem -signature "$file_to_verify.sig" "$file_to_verify"

#If the verification is successful

if [ $? -eq 0 ]; then
	timestamp=$(tail -c +$(($(stat -c %s "$file_to_verify") - 19)) "$file_to_verify")

	echo "Signature verified. Timestamp: $timestamp"
	
	#If the verification fails
else
	echo "Signature verification failed."
fi
