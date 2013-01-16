#!/bin/bash
x=0
num=0
fizz()  { (! (( $x % 3 )) ); } 
buzz()  { (! (( $x % 5 )) ); } 

sum()   { 
        echo -n " $num +" 
                ((x + num));
                num=$(( x + num ))
        echo -n  " $x ="
}


while ((x < $1 ))
do

if fizz || buzz

        then
                sum "$x" "$num"
fi

((x++))
done

echo " $num"
