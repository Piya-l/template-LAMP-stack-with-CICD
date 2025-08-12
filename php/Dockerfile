# Start from the official PHP 8.2 Apache image
FROM php:8.2-apache

## ------------------
## -- System Dependencies & PHP Extensions --
## ------------------
# Install the PHP extensions required for connecting to MariaDB/MySQL.
# This is a critical step for your application to communicate with the 'db' service.
RUN docker-php-ext-install mysqli pdo pdo_mysql

## ------------------
## -- Configuration & Source Code --
## ------------------
ARG BUILD_ENV=development

# Copy the custom Apache configuration file based on BUILD_ENV and enable it.
# Using 'conf-enabled' is a clean way to ensure it's loaded by Apache.
COPY config/apache-${BUILD_ENV}.conf /etc/apache2/conf-enabled/apache-custom.conf

# Set the working directory for subsequent commands.
WORKDIR /var/www/html

# Copy your application source code into the container.
COPY src/ .

# (Optional but recommended) Set correct permissions for the web server to write files.
RUN chown -R www-data:www-data /var/www/html

## ------------------
## -- Finalization --
## ------------------
# Expose port 80 for the web server.
EXPOSE 80

# The base image's default CMD is sufficient, but explicitly stating it is also fine.
# This command starts the Apache web server in the foreground.
CMD ["apache2ctl", "-D", "FOREGROUND"]