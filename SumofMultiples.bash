#!/bin/bash
# Taken from http://projecteuler.net/problem=1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.


x=0
num=0
fizz()  { (! (( $x % 3 )) ); } 
buzz()  { (! (( $x % 5 )) ); } 

sum()   { 
        printf " $num +" 
                ((x + num));
                num=$(( x + num ))
        printf " $x ="
}


while ((x < 1000 ))
do

if fizz || buzz

        then
                sum "$x" "$num"
fi

((x++))
done

echo " $num"
