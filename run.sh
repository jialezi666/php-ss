#!/bin/bash

sed -i 's/127.0.0.1/'$SER'/g'  /root/Applications/Shadowsocks/config.php
sed -i 's/aes-256-cfb/'$MD'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/12345678/'$PASSWD'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/443/'$P'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/1080/'$LOC_PORT'/g' /root/Applications/Shadowsocks/config.php
sed -i 's/50/'$PROCESS'/g' /root/Applications/Shadowsocks/config.php

php start.php start -d
