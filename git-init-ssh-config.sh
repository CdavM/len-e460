#!/bin/bash
echo "This script updates your git username and email. It then optinally generates a 4096 bit RSA key and optionally displays the public RSA key from the default location."
echo "Enter your github username"
read UNAME
echo "Enter your github email."
read EMAIL
git config --global user.name "$UNAME"
git config --global user.email "$EMAIL"
echo "Generate a RSA key? (y/n)"
read IF_GENERATE_KEY
if [ "$IF_GENERATE_KEY" = 'y' ] || [ "$IF_GENERATE_KEY" = 'Y' ]; then
	ssh-keygen -t rsa -b 4096 -C "$EMAIL"
	ssh-add ~/.ssh/id_rsa
fi
echo "Display public key from default location? (y/n)"
read if_display
if [ "$if_display" = "y" ] || [ "$if_display" = "Y" ]; then
	cat ~/.ssh/id_rsa.pub
fi
