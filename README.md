# Encryption-Key-Management
## Project Overview 

This project focuses on implementing key management, script automation, and the usage of OpenSSL for encryption and decryption tasks. The primary goal is to enhance understanding and application of cryptographic principles in a practical environment.

## Key Features

- Generation of a public-private key pair using OpenSSL for secure communication.
- Automation of encryption and decryption tasks for files in a directory.
- Creation of digital signatures with timestamps for added security.
- Verification of digital signatures and extraction of timestamps to ensure data authenticity.


## Prerequisites
- OpenSSL installed on your system. Learn how to install OpenSSL.
- Basic understanding of shell scripting and public-key cryptography.

## Installation
Clone the repository to your local machine:

git clone https://github.com/TyAbra/Encryption-Key-Management

## Navigating to Your Project Directory:

cd Encryption-Key-Management

## Usage

### Generating Key Pair
- Run the script generate_keys.sh to create a public-private key pair.
- Keys will be stored in the specified directory.

### Encrypting Files
- Place all .txt files you want to encrypt in a designated directory.
- Run batch_encrypt.sh to encrypt all .txt files using the public key.

### Encrypted files will have the .encrypted extension.
- Decrypting Files
- Place all .encrypted files in a designated directory.
- Run batch_decrypt.sh to decrypt files using the private key.

### Digital Signature
- Run sign_files.sh to create a digital signature for each file, appending a timestamp.
- Signature files will be generated in the same directory.

### Signature Verification
- Run verify_signatures.sh to verify the digital signatures and extract timestamps.
- The script checks the authenticity of the files against their signatures.


Contributing
- Feel free to fork the project and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

License
- This project is licensed under the MIT License - see the LICENSE file for details.

Acknowledgments
- Thanks to everyone who has contributed to the development and testing of this project.
- Special thanks to the OpenSSL community for providing such a powerful tool.
