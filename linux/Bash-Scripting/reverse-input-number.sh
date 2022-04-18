# Write a script that gives the reverse  of a number...

#! /bin/bash

read -p "Enter a number: " num
temp=$num
while [ $temp -ne 0 ]
do
    reverse=$reverse$((temp%10))
    temp=$((temp/10))
done
echo "Reverse of $num is $reverse"

# Other solutions:

# read -p "Enter your number: " num
# echo "reverse of $num is: "
# echo $num | rev

# echo enter n
# read n
# num=0
# while [ $n -gt 0 ]
# do
# num=$(expr $num \* 10)
# k=$(expr $n % 10)
# num=$(expr $num + $k)
# n=$(expr $n / 10)
# done
# echo number is $num  
