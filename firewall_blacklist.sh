#!/bin/bash
while IFS= read -r block
do 
   sudo ufw insert 1 deny from "$block" 
done < "newip4.txt"
