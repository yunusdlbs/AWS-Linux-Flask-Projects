# Write a bash script program that creates a secret password with spesific lenth ( 8 ).

# Expected Output:
# 4sd1eOiY

#! /bin/bash
#This can be anything of your choice
echo "Welcome to simple password generator" 
  
# ask the user how much long should be
echo "please enter the length of the password"  
  
# read the input given by user and store in variable
read  PASS_LENGTH 
  
# loop will create 5 passwords according to
# user as per length given by user                        
for p in $(seq 1 5); # seq gives numbers between 1 and 5, so this loop iterates 5 times.                                   
do 
	    openssl rand -base64 20 | cut -c1-$PASS_LENGTH  # openssl rand produces pass in base64 and 20 char.. 
    done
