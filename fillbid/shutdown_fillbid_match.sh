#!/bin/bash

crontab -l | sed '/fillbid_match.sh/d' >> conf && crontab conf && rm -f conf