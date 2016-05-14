#!/bin/bash
echo "Enter your github username"
read UNAME
echo "Enter your github email."
read EMAIL
git config --global user.name "$UNAME"
git config --global user.email "$EMAIL"
ssh-keygen -t rsa -b 4096 -C "$EMAIL"
ssh-add ~/.ssh/id_rsa
echo "Display public key from default location? (y/n)"
read if_display
if [ "$if_display" = "y" ] || [ "$if_display" = "Y" ]; then
	cat ~/.ssh/id_rsa.pub
fi
