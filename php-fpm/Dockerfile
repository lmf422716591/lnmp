FROM php:7.1-fpm
RUN pecl install redis-5.1.1 \
    && pecl install xdebug-2.8.1 \
    && pecl install swoole \
    && docker-php-ext-enable redis xdebug swoole


