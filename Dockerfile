FROM kmm996/nginx-php5-ssh
COPY index.php  /usr/share/nginx/html/

#RUN apt-get update && \
#	apt-get clean  && \
#	apt-get install -y git && \
#	apt-get clean && \
#	rm -rf /var/lib/apt/lists/*
#RUN git clone https://github.com/walkor/shadowsocks-php.git php-ss

COPY . /root/

RUN apt-get update && \
  apt-get clean  && \
  apt-get remove -y php5-fpm && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
  apt-get clean  && \
  apt-get install -y php5-fpm && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*


ENV SER=127.0.0.1
ENV MD=aes-256-cfb
ENV PASSWD=12345678
ENV P=443
ENV LOC_PORT=1080
ENV PROCESS=50

WORKDIR /root/
RUN chmod +x /root/run.sh

EXPOSE 80 443
CMD ["/root/run.sh"]
