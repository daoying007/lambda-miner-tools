#!/bin/bash

work_path=$(dirname $(readlink -f $0))
rm $work_path/monitor-init.lock
crontab -l | sed '/monitor.sh/d' >> conf && crontab conf && rm -f conf