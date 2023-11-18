#!/bin/bash

# Check if the private key file exists
if [ ! -f "goldkey.pem" ]; then
    echo "Private key file not found: goldkey.pem"
    exit 1
fi

# Loop through all .encrypted files in the directory
for efile in *.encrypted; do
    # Check if there are .encrypted files
    if [ -f "$efile" ]; then
        # Remove the .encrypted extension from filename
        decrypted_file="${efile%.encrypted}.decrypt.txt"

        # Decrypt the file using openssl with private key
        openssl pkeyutl -decrypt -inkey goldkey.pem -in "$efile" -out "$decrypted_file"

        echo "Decrypted: $efile -> $decrypted_file"
    fi
done

echo "Decryption complete."
