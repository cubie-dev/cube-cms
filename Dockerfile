FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    cron

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif

# Install composer from the official image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install npm
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get install -y nodejs

RUN useradd -ms /bin/bash www

COPY --chown=www:www src /var/www

# Set up cron
COPY ./docker/cron/scheduler-cron /etc/cron.d/scheduler-cron
RUN crontab /etc/cron.d/scheduler-cron \
    && chmod u+s /usr/sbin/cron \
    && touch /var/log/cron.log

COPY ./docker/start-container /usr/local/bin/start-container

RUN chmod +x /usr/local/bin/start-container

# Set working directory
WORKDIR /var/www

USER www

ENTRYPOINT ["sh", "/usr/local/bin/start-container"]
