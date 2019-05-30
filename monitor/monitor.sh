#!/bin/bash

account=$1
password=$2

if [ $# -lt 1 -o $# -gt 2 ]
then
    echo 'Input parameters illegal.You should provide account and password.'
    exit 1
elif [ $# = 1 ]
then
    read -s -p "Enter Password: "  pswd
    password=$pswd
    echo ""
fi

work_path=$(dirname $(readlink -f $0))

# 添加计划任务
LOCK_FILE="$work_path/monitor-init.lock"
if [ ! -f $LOCK_FILE ]; then
    touch $LOCK_FILE
    crontab -l > conf && echo "*/1 * * * * $work_path/monitor.sh ${account} ${password}" >> conf && crontab conf && rm -f conf
    echo '添加自动监控任务成功，系统会每分钟检查一次，如发现lambda挖矿进程挂掉，会自动重启，监控日志存放在 lambda-monitor.log'
fi

# 监控进程
LOG_FILE=$work_path/lambda-monitor.log
command=`ps -ef|grep '/lambda miner run'|sed -e "/grep/d"`
if [  "$command" == "" ]
then
    echo $password | nohup $work_path/lambda miner run $account >> $work_path/lambda.log 2>&1 & echo $! > $work_path/lambda.pid
    date >> $LOG_FILE
    echo "发现Lambda挖矿进程异常，已重启" >> $LOG_FILE
fi