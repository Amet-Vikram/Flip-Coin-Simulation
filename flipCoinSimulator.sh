#!/bin/bash 
h=0
t=0
stim_len=21

new_variable="This is just a temp variable."
new_variable2="Created this to evoke a conflict. Sasta terrorism lol."
new_variable3="This was created in new branch. sakjfcbsalkncsakjcnlka;lma"

echo "Changes"
echo $new_variable $new_variable2 $new_variable3

while :
do
    check=0
    flip=$((RANDOM%2))
    case $flip in
        0)
            h=$(($h+1))
            if [ $h -eq $stim_len ]
            then
                check=1
            fi
            ;;
        1)
            t=$(($t+1))
            if [ $t -eq $stim_len ]
            then
                check=1
            fi
            ;;
    esac
    if [ $check -eq 1 ]
    then
        break
    fi
done

#echo "Head Frequency: "$h "Tail Frequency: "$t
if [ $h -gt $t ]
then 
    echo "Head won by" $(($h-$t)) "times."
elif [ $t -gt $h ]
then 
    echo "Tails won by" $(($t-$h)) "times."
else
    "Its A Tie!!"
fi
