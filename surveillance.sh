#!/bin/bash
LISTE="192.168.1.1 192.168.1.5" # Mets les IP de ta box + ta CIDEA
while true; do
SCAN=$(nmap -sn 192.168.1.0/24 | grep -oE "192.168.1.[0-9]+")
for IP in $SCAN; do
    if [[ ! $LISTE =~ $IP ]]; then
        termux-notification -t "INTRUS WIFI" -c "Appareil suspect: $IP"
        termux-vibrate -d 1000
    fi
done
sleep 60
done

