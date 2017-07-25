#!/bin/bash

# Generate a data as unique identifier
TIMESTAMP=`date --iso-8601=seconds`
echo "$TIMESTAMP"


# How old are you?
echo "How old are you?"
read AGE

# What is your favorite color?
echo "What is your favorite color?"
read FAVORITECOLOR

# Favorite movie?
echo "Favorite movie?"
read FAVORITEMOVIE

# Hometown?
echo "Hometown?"
read HOMETOWN

# Favorite place to eat on Franklin Street?
echo " favorite place to eat on Franklin Street?"
read FRANKLINSTREET

# Data should got into CSV file
echo "$TIMESTAMP, $AGE, $FAVORITECOLOR, $FAVORITEMOVIE, $HOMETOWN, $FRANKLINSTREET" >> assignment4.csv

# Return data
cat assignment4.csv




