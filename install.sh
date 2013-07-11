#!/bin/bash

PREFIX="/usr/local/bin"
INTERCOM_BIN="$PREFIX/intercom"
curl -o $INTERCOM_BIN https://raw.github.com/boourns/intercom/master/intercom.sh
chmod +x $INTERCOM_BIN
echo "I am going to ask for SUDO to install intercom as a service. Dont panic!"
sudo launchctl remove com.boourns.intercom
sudo cp ./com.boourns.intercom.plist /Library/LaunchDaemons/com.boourns.intercom.plist
sudo launchctl load -w /Library/LaunchDaemons/com.boourns.intercom.plist
echo "done!"