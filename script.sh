#!/bin/bash

#Remove folders if already exists
rm -rf fol_1 fol_2

mkdir fol_1 fol_2

# Create files in fol_1 and fol_2
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/2_3.txt

# Only owner has read and write permissions (600)
chmod 600 fol_1/1_1.txt fol_1/1_3.txt
chmod 600 fol_2/2_1.txt fol_2/2_3.txt

# All users have read, write, and execute permissions (777)
chmod 777 fol_1/1_2.txt
chmod 777 fol_2/2_2.txt

echo "Job completed"
