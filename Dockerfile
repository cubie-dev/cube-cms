FROM php:8.1-alpine as php-builder

# Install php extensions
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions &&  \
    chmod +x /usr/local/bin/docker-php-ext-enable &&  \
    apk --no-cache add pcre-dev ${PHPIZE_DEPS} && \
    install-php-extensions pdo_mysql mbstring exif pcntl sockets && \
    pecl install swoole && docker-php-ext-enable swoole && \
    pecl install inotify && docker-php-ext-enable inotify && \
    apk del pcre-dev ${PHPIZE_DEPS}

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY --chown=www-data:www-data . /var/www

# Install supervisor
RUN apk add --no-cache supervisor

RUN mkdir -p /var/log/supervisor && \
    mkdir -p /var/run && \
    touch /var/log/supervisor/supervisord.log && \
    touch /var/run/supervisord.pid && \
    chown www-data:www-data /var/log/supervisor/supervisord.log &&\
    chown www-data:www-data /var/run/supervisord.pid

COPY docker/config/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

COPY --chmod=755 ./docker/entrypoint.sh /usr/local/bin/entrypoint.sh

USER www-data

WORKDIR /var/www

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
