FROM    nginx
RUN     rm -rf /etc/nginx/conf.d/default.conf
RUN     apt update && apt install -y wget
EXPOSE  80
CMD     wget http://100.100.100.114/%ea%b3%b5%ec%9c%a0/default.conf -O /etc/nginx/conf.d/default.conf && wget http://100.100.100.114/%ea%b3%b5%ec%9c%a0/hello.html -O /usr/share/nginx/html/hello.html &&nginx -g 'daemon off;'