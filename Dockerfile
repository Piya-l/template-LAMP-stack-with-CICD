# Use the official PHP Apache image as the base
FROM php:8.2-apache

# Copy the application source code into the container
COPY src/ /var/www/html/

# Copy the custom Apache configuration and enable it
COPY config/apache-custom.conf /etc/apache2/conf-enabled/apache-custom.conf

# Expose port 80
EXPOSE 80

# The default command of the base image runs Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]
