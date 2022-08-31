FROM php:8.1

RUN apt-get update && apt-get install -y \
    git \
    curl \
    supervisor \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    cron \
    procps \
    # Clear cache
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    # Install PHP extensions
    && docker-php-ext-install pdo_mysql mbstring exif pcntl sockets \
    && pecl install swoole && docker-php-ext-enable swoole \
    # Install node
    && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update && apt-get install -y nodejs \
    # create user
    && useradd -ms /bin/bash www

# Install composer from the official image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Copy required files
COPY --chown=www:www src /var/www
COPY docker/config/supervisor/supervisord.conf /etc/supervisor/conf.d/

## Set up cron
COPY ./docker/cron/scheduler-cron /etc/cron.d/scheduler-cron
RUN crontab /etc/cron.d/scheduler-cron \
    && chmod u+s /usr/sbin/cron \
    && touch /var/log/cron.log

COPY ./docker/start-container /usr/local/bin/start-container

RUN chmod +x /usr/local/bin/start-container

# Set working directory
WORKDIR /var/www

ENTRYPOINT ["sh", "/usr/local/bin/start-container"]
