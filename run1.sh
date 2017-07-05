#!/bin/bash
service nginx restart
service php5-fpm restart
/usr/sbin/sshd -D
