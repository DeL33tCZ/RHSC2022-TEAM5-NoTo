#!/bin/bash

Help()
{
   # Display Help
   echo "Script used to start NoTo"
   echo
   echo "Syntax: ./start.sh [-h|C|F]"
   echo "options:"
   echo "h     Print this Help."
   echo "C     Open NoTo in Chrome."
   echo "V     Open NoTo in Firefox."
   echo
}

while getopts ":hCF:" opt; do
   case $opt in
      h)
         Help
         exit;;
      C) 
		 google-chrome-stable index.html;;
      F) 
         firefox index.html;;
     \?) 
         echo "Error: Invalid option"
         Help
         exit;;
   esac
done