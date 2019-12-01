FROM ubuntu:14.04

RUN apt-get update && \
  apt-get install -y \
  apache2 \
  php5 \
  php5-cli \
  libapache2-mod-php5 \
  php5-gd \
  php5-ldap \
  php5-mysql

RUN apt-get clean && \
  rm -rf /var/lib/apt/lists/* \
  /tmp/* \
  /var/tmp/*

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
