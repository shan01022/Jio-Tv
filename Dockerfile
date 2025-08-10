# Use the official PHP + Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite (often used for PHP routing)
RUN a2enmod rewrite

# Copy project files to Apache document root
COPY . /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 (Apache default)
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
