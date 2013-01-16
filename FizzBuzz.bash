#!/bin/bash
#for loop with &&'s and ||'s

for x in {1..100};
do
        { (( x % 5 == 0 )) && (( x % 3 == 0 )) && echo "$x fizzbuzz"; } ||
        { (( x % 5 == 0 )) && echo "$x buzz"; } ||
        { (( x % 3 == 0 )) && echo "$x fizz"; } ||

                echo "$x"

done

#while loop with if's and then's

(( x=1 ));
while (( x < 101 ));
do

        if { ( (( x % 5 == 0 )) && (( x % 3 == 0 )) ) } then echo "fizzbuzz";
        elif (( x % 5 == 0 )); then echo "buzz";
        elif (( x % 3 == 0 )); then echo "fizz";
        else
                echo "$x";
        fi

(( x++ ))

done

#more variations.

#!/bin/bash

for x in {1..100};
        do

if (! ((x % 3)) ) && (! ((x % 5)) ); then echo "FizzBuzz"
        elif (! ((x % 3)) ); then echo "fizz"
        elif (! ((x % 5)) ); then echo "buzz"

else
        echo $x;
fi

done


#Done up with functions. 
#!/bin/bash

x=0
fizzbuzz() { (! (( x % 3 )) ) && (! ((x % 5)) ) && echo "fizzbuzz"; }
fizz()  { (! (( $x % 3 )) ) && echo "fizz"; }
buzz()  { (! (( $x % 5 )) ) && echo "buzz"; }


while ((x < 101 ))
do

fizzbuzz $x || fizz $x || buzz $x || echo $x

((x++))
done



