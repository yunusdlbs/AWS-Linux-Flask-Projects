#! /bin/bash
# Write a shell script about Fibonacci Numbers...
a=0
b=1

read -p "Enter your index number for Fibonacci Numbers: " n
counter=2
echo $a  
echo $b
while [[ $counter -le $n ]]; do

counter=`expr $counter+1`
fib=`expr $a + $b`
a=$b
b=$fib
echo $fib 
done