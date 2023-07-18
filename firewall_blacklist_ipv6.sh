#!/bin/bash

# Define the path to the text file containing IPv6 addresses
IP_FILE="newip6.txt"

# Loop through each IPv6 address in the file
while IFS= read -r ip_address; do
  # Add the IPv6 address to UFW with the "deny" action
  ufw deny from "$ip_address" to any
done < "$IP_FILE"

