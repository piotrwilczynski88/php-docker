FROM php:7.4-apache

RUN apt-get clean
RUN apt-get update

RUN apt-get update && apt-get install -y \
        git \
        tree \
        wget \
        subversion \
        libzip-dev

RUN apt-get install -y \
        zlib1g-dev \
        zip \
  && docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php \
        && mv composer.phar /usr/local/bin/ \
        && ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

RUN rm -f /etc/apache2/sites-available/000-default.conf
ADD ./000-default.conf /etc/apache2/sites-available

RUN a2enmod rewrite && rm -r /var/www/html && ln -sf /var/www/public /var/www/html

COPY composer.json /var/www/pwilk/
COPY run.sh /var/www/pwilk/

WORKDIR /var/www/pwilk

EXPOSE 80

ENTRYPOINT ["/var/www/pwilk/run.sh"]
