FROM arm64v8/php:7.2-apache

RUN docker-php-source extract
RUN docker-php-ext-install mysqli

USER app
CMD ["apache2-foreground"]