#!/bin/bash
#from http://projecteuler.net/problem=3

number="$1"
number_of_divisors=0
iteration=1

is_whole()  {
remainder="${@##*.}";
(( "10#$remainder" == 0 ));
}

maths (){

result="$(bc <<< "scale=4; $number / $iteration")"
}

while ((iteration < $1))
do

maths "$number" "$iteration"

if is_whole "$result"; then
        echo  "$number" / "$iteration" =  "$result" which is a whole number  
        let number_of_divisors="$(( number_of_divisors + 1 ))"

fi

((iteration++))

done

if (( number_of_divisors == 2 ));
        then
                echo "$number only has "$number_of_divisors" divsors and is therfore is probably prime"
        else
                echo "$number has "$number_of_divisors" divsors and is therfore certainly not prime"
fi
