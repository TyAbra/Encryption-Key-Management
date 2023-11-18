# Encryption-Key-Management

## Project Overview 

This project focuses on implementing key management, script automation, and the usage of OpenSSL for encryption and decryption tasks. The primary goal is to enhance understanding and application of cryptographic principles in a practical environment.

## Key Features

- Generation of a public-private key pair using OpenSSL for secure communication.
- Automation of encryption and decryption tasks for files in a directory.
- Creation of digital signatures with timestamps for added security.
- Verification of digital signatures and extraction of timestamps to ensure data authenticity.

## Prerequisites

- OpenSSL installed on your system. [Learn how to install OpenSSL](link-to-installation-guide).
- Basic understanding of shell scripting and public-key cryptography.

## Installation

Clone the repository to your local machine:

~~~bash
git clone https://github.com/TyAbra/Encryption-Key-Management
~~~

## Navigating to Your Project Directory:

~~~bash
cd Encryption-Key-Management
~~~

## Usage

### Generating Key Pair with OpenSSL

Generate your RSA private key (named `goldkey.pem`):
~~~bash
openssl genrsa -out goldkey.pem 2048
~~~
Generate the corresponding RSA public key (named `bronzekey.pem`):

~~~bash
openssl rsa -pubout -in goldkey.pem -out bronzekey.pem
~~~
### Batch Encryption

- Place all `.txt` files you want to encrypt in a designated directory.
- Run `batch_encrypt.sh` to encrypt all `.txt` files using the public key.
  
~~~bash
./batch_encrypt.sh
~~~

- Encrypted files will now have the `.encrypted` extension.


### Batch Decryption

- Place all `.encrypted` files in a designated directory.
- Run `batch_decrypt.sh` to decrypt files using the private key.
  
~~~bash
./batch_decrypt.sh
~~~

- Decrypted files will now have the `.decrypted.txt` extension.
  
### Digital Signature

- Run `signature_timestamp.sh` to create a digital signature for each file, appending a timestamp.

~~~bash
./signature_timestamp.sh
~~~

- Signature files will be generated in the same directory.

### Signature Verification

- Run verify_extract_timestamp.sh to verify the digital signatures and extract timestamps.
  
~~~bash
./verify_extract_timestamp.sh
~~~

- The script checks the authenticity of the files against their signatures.

## Contributing

- Feel free to fork the project and submit pull requests. For significant changes, please open an issue first to discuss what you want to change.

## License

- This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Thanks to everyone who has contributed to the development and testing of this project.
- Special thanks to the OpenSSL community for providing such a powerful tool.
