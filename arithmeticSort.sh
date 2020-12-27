#! /bin/bash -x

#Arithmetic Computation and Sort Assignment
declare -A operations
read -p "enter 1st input " a
read -p "enter 2nd input " b
read -p "enter 3rd input " c

operations["op1"]=$(($a+$b*$c))
operations["op2"]=$(($a*$b+$c))
operations["op3"]=`awk 'BEGIN {print('$c'+'$a'/'$b')}'`
operations["op4"]=`awk 'BEGIN {print('$a'%'$b'+'$c')}'`
