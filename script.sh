#!/bin/bash

# Step 8: Remove directories if they already exist
rm -rf fol_1 fol_2

# Step 3: Create directories fol_1 and fol_2
mkdir fol_1 fol_2

# Step 4 & 5: Create files in fol_1 and fol_2
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/2_3.txt

# Step 10: Set permissions on files ending with _1.txt and _3.txt
# Only owner has read and write permissions (600)
chmod 600 fol_1/1_1.txt fol_1/1_3.txt
chmod 600 fol_2/2_1.txt fol_2/2_3.txt

# Step 11: Set permissions on files ending with _2.txt
# All users have read, write, and execute permissions (777)
chmod 777 fol_1/1_2.txt
chmod 777 fol_2/2_2.txt

# Step 17: Print message when job is complete
echo "Job completed"
