#!/bin/bash

# Arg $1 = 4 char date ie 0310
# Arg $2 = time+AM/PM which were concatenated in the previous step ie 05:00:00AM


awk '{print $1 $2 "\t" $5 " " $6}' $1-dealer-schedule  | grep -i $2
