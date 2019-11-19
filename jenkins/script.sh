#!/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
	echo "$NAME $LASTNAME"
else
	echo "Please select show if you want to show the name"
fi 
