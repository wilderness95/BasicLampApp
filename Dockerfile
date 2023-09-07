FROM php:7.2-apache

RUN docker-php-ext-install mysqli

USER app
CMD ["apache2-foreground"]