#!/bin/bash

Help()
{
   echo "Script used to start NoTo"
   echo
   echo "Syntax: ./start.sh [-h] [-C] [-F] "
   echo "Options:"
   echo " -h     Print this Help."
   echo " -C     Open NoTo in Chrome."
   echo " -F     Open NoTo in Firefox."
   echo
}

while getopts ":hCF:" opt; do
   case $opt in
      h)
         Help
         exit;;
      C) 
		   google-chrome-stable index.html
         exit;;
      F) 
         firefox index.html
         exit;;
     \?) 
         echo "Error: Invalid option"
         Help
         exit;;
   esac
done