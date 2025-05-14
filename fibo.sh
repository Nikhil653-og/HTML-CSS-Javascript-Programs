#!/bin/bash
first=0
second=1
next=0
echo "Enter the number:"
read n
if [[ $n -eq 1 ]]
then
echo "0"
elif [[ $n -eq 2 ]]
then
echo "0,1"
else 
for (( i=3; i<=n; i++ ))
do
next=$((first + second))
echo -n ", $next"
first=$second
second=$next
done
fi