FROM nginx:latest

EXPOSE 80 2222
ENV DEBIAN_FRONTEND=noninteractive

COPY init.sh /init.sh

RUN rm -f /etc/nginx/nginx.conf /etc/nginx/mime.types

COPY nginx.conf /etc/nginx/nginx.conf
COPY basic.conf /etc/nginx/basic.conf
COPY mime.types /etc/nginx/mime.types
COPY default /etc/nginx/sites-enabled/default
COPY location /etc/nginx/location
COPY content/ /var/www

WORKDIR /
RUN apt update && \
    apt install -y dos2unix openssh-server && \
    dos2unix init.sh && \
    dos2unix /etc/nginx/nginx.conf && \
    dos2unix /etc/nginx/basic.conf && \
    dos2unix /etc/nginx/mime.types && \
    find /var/www -type f -print0 | xargs -0 dos2unix && \
    dos2unix init.sh && \
    echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/

CMD ["/init.sh"]
