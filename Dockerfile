FROM php:5.6-apache

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/bin --filename=composer
COPY emojibattle /var/www/html/
RUN cd /var/www/html && composer install