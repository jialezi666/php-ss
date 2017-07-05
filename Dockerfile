FROM kmm996/nginx-php5-ssh
COPY index.php  /usr/share/nginx/html/

#RUN apt-get update && \
#	apt-get clean  && \
#	apt-get install -y git && \
#	apt-get clean && \
#	rm -rf /var/lib/apt/lists/*
#RUN git clone https://github.com/walkor/shadowsocks-php.git php-ss

COPY . /root/

ENV s=127.0.0.1
ENV m=aes-256-cfb
ENV k=12345678
ENV p=443
ENV c=1080
ENV n=50

WORKDIR /root/
RUN chmod +x *.sh


EXPOSE 22 80 443
CMD ["/root/run1.sh && ./root/run.sh"]
