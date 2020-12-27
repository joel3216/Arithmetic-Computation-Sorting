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

i=0
for op in ${operations[@]}
do
	opArray[$i]=$op
	i=$(($i+1))
done

for ((i=0; i<4; i++))
do
	for((j=0;j<4-i-1;j++))
	do
		if [[ `awk 'BEGIN {if( '${opArray[$j]}' > '${opArray[$j+1]}' ) print "true"}'` ]]
		then
			temp=${opArray[$j]}
			opArray[$j]=${opArray[$j+1]}
			opArray[$j+1]=$temp
		fi
	done
done

echo ${opArray[@]}
