#!/bin/bash
#from http://projecteuler.net/problem=2
#By considering the terms in the Fibonacci sequence whose values do not exceed four million
#find the sum of the even-valued terms.
#

#!/bin/bash
a=1
b=1
final_value=0

fibbo () {
let a=$(( a + b ))
let b=$(( a + b ))
}

is_even()  { 
(! (( "$@" % 2 )) );
}

nested () {
if is_even "$i"; then
        echo "$i" is even;
        let final_value="$(( final_value + i ))"
fi
}


while (( "$a" < 4000000 )) || (( "$b" < 4000000 )) ;
do
        fibbo "$a" "$b"

                for i in "$a" "$b";
                        do
                                nested "$i"
                        done

if $( ! is_even "$i") ; then 
        echo $i 
fi


((count++))
done
        echo Final Value is "$final_value"
