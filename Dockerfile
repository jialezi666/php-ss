FROM kmm996/nginx-php7-ssh
COPY index.php /var/www/html/

#RUN apt-get update && \
#	apt-get clean  && \
#	apt-get install -y git && \
#	apt-get clean && \
#	rm -rf /var/lib/apt/lists/*
#RUN git clone https://github.com/walkor/shadowsocks-php.git php-ss

COPY . /root/


ENV $SER=127.0.0.1
ENV $MD=aes-256-cfb
ENV $PASSWD=12345678
ENV $P=443
ENV $LOC_PORT=1080
ENV $PROCESS=50

WORKDIR /root/
RUN php start.php start -d
EXPOSE 80 443
