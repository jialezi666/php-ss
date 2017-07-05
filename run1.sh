#!/bin/bash
service nginx restart
service php5-fpm restart
nohup /usr/sbin/sshd -D & 
