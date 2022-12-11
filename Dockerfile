FROM php:8.2-fpm-alpine as php-builder

# Install php extensions
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions &&  \
    chmod +x /usr/local/bin/docker-php-ext-enable &&  \
    apk --no-cache add pcre-dev ${PHPIZE_DEPS} && \
    install-php-extensions pdo_mysql mbstring exif && \
    apk del pcre-dev ${PHPIZE_DEPS}

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY --chown=www-data:www-data . /var/www

COPY --chmod=755 ./docker/entrypoint.sh /usr/local/bin/entrypoint.sh

USER www-data

WORKDIR /var/www

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
