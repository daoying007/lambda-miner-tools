#!/bin/bash

askid=$1
account=$2
password=$3

if [ $# -lt 2 -o $# -gt 3 ]
then
    echo 'Input parameters illegal.You should provide askid, account and password.'
    exit 1
elif [ $# = 2 ]
then
    read -s -p "Enter Password: "  pswd
    password=$pswd
    echo ""
fi

work_path=$(dirname $(readlink -f $0))

bash ./shutdown_fillbid_match.sh
crontab -l > conf && echo "*/30 * * * * $work_path/fillbid_match.sh ${askid} ${account} ${password}" >> conf && crontab conf && rm -f conf