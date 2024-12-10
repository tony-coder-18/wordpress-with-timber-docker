FROM wordpress:latest

# Install dependencies and Composer
RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html