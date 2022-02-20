#!/bin/bash 
stim_len=10
i=0
h=0
t=0

while [ $i -lt $stim_len ]
do
    flip=$((RANDOM%2))
    case $flip in
        0)
            h=$(($h+1))
            ;;
        1)
            t=$(($t+1))
            ;;
    esac
    i=$(($i+1))
done

echo "Head Frequency: "$h "Tail Frequency: "$t