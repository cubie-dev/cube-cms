#!/bin/sh

role=${CONTAINER_ROLE:-app}
env=${APP_ENV:-production}

if [ "$env" = "local" ]; then
    cd /var/www && php artisan config:cache && php artisan route:cache && php artisan view:cache
fi

# @TODO start horizon

if [ "$role" = "app" ]; then
    echo "Starting app..."
    php-fpm
fi

if [ "$role" = "vite" ] && [ "$env" = "develop" ]; then
    echo "Starting vite..."
    cd /var/www && npm install && npm run dev
fi
