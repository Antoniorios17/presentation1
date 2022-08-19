#!/bin/bash

# Prompt user for desired movie runtime range
echo "Pleaes select an option (1-5), to display movies within the desired runtime range:"
echo "1. 60 - 120 minutes"
echo "2. 121 - 180 minutes"
echo "3. 181 - 220 minutes"
echo "4. 221 minutes and longer"
read runtime

# Numerical value between 1-4 must be selected or script will not run
if ! [[ "$runtime" =~ ^[+-]?[1-4] ]]
then
    echo "Sorry, you need to select a numerical value ranging from 1-4"
    exit 0
fi

echo "Excellent choice, let's see what movies we can recommend for you within that interval!"

#Access Movie database and return suggested movies based on user input
case $runtime in
1) awk -F ',' ' ($4>=60 && $4<=120) { print $1 }' Movies.csv
;;
2) awk -F ',' '($4>=121 && $4<=180) { print $1 }' Movies.csv
;;
3) awk -F ',' '($4>=181 && $4<=220) { print $1 }' Movies.csv
;;
4) awk -F ',' '($4>=221 && $4<=350) { print $1 }' Movies.csv
;;
esac
