#!/bin/bash

crontab -l | sed '/monitor.sh/d' >> conf && crontab conf && rm -f conf