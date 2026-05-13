#!/bin/bash

echo "Starting Network Discovery..."

SUBNET="10.125.69.8/24"

echo "Running Ping Scan..."
nmap -sn $SUBNET -oN ping_scan.txt

echo "Extracting Live Hosts..."
grep "Nmap scan report" ping_scan.txt > live_hosts.txt

echo "Discovery Completed!"
