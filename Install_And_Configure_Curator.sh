#!/bin/bash

#Get pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

#install pip
pip install elasticsearch-curator

#Add curator command to /etc/crontab in order to schedule one curator execution each day at 00:05:
vi /etc/crontab
5 0 * * * root curator --host localhost delete indices --older-than 7 --time-unit days --timestring '\%Y.\%m.\%d'