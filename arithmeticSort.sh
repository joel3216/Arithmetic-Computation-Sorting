#! /bin/bash -x

#Arithmetic Computation and Sort Assignment
read -p "enter 1st input " a
read -p "enter 2nd input " b
read -p "enter 3rd input " c

op1=$(($a+$b*$c))
op2=$(($a*$b+$c))
op3=`awk 'BEGIN {print('$c'+'$a'/'$b')}'`
