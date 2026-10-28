#!/bin/bash
rm $PREFIX/bin/ngrok
rm -rf $PREFIX/share/ngrok
mkdir -p $PREFIX/share/ngrok
cp get-ngrok.sh $PREFIX/share/ngrok
cp ngrok $PREFIX/bin
apt update && apt upgrade -y
apt install -y proot wget resolv-conf
apt clean
apt autoremove
cd $PREFIX/share/ngrok
bash get-ngrok.sh
echo -e "\e[1;32mNgrok installed sucessfull!"
echo "Run : ngrok "
echo " To use ngrok"

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=install.sh
