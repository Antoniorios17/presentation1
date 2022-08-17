#!/bin/bash

# This part of the script will search through the database by genre and display the title

# ask user input for genre:
echo "Possible genres are: action, adventure, animation, biography, comedy, crime, drama, horror, mystery";
read -p "What genre film would you like to watch? " var_genre;
var_genre=$(echo $var_genre | tr 'A-Z' 'a-z');

# case statement for error (print "you chose this or error and reprompt)

# file path -- where .csv is located
file=~/Desktop/presentation1/Movies.csv;

#go through file and redirect lines with relevant genre
cat $file | grep -i "$var_genre"  > ~/Desktop/shortlist.csv;

#echo
echo "We suggest these:";

# print title -- bc of spaces and commas, hard to use , as csv delimiter.
# so ",2" was used --> splits line into two fields; title and everything else.
cat ~/Desktop/shortlist.csv | awk -F ",2" '{print $1}'; 

#delete file that was generated
rm ~/Desktop/shortlist.csv;
