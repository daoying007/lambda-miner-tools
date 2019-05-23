#!/bin/bash

askid=$1
account=$2
password=$3

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(cat /dev/urandom | head -n 10 | cksum | awk -F ' ' '{print $1}')
    echo $(($num%$max+$min))
}

work_path=$(dirname $(readlink -f $0))

idx=$(rand 1 3)
price=$(rand 4 10)
duration=$(rand 30 60)

date >> $work_path/fillbid.log
echo "../lambda file put ${account} ./test${idx}.file ${price} ${duration}" >> $work_path/fillbid.log
echo $password | $work_path/../lambda file match $account $work_path/test${idx}.file  ${duration} ${askid} >> $work_path/fillbid.log 2>&1

exit 0