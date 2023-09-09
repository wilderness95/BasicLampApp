FROM arm64v8/php:7.2-apache

RUN docker-php-ext-install mysqli
RUN useradd -u 2000 app

ADD /src /var/www/html

USER app

CMD ["apache2-foreground"]