FROM php:7.3.3-apache

echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && \     a2enconf fqdn
WORKDIR /var/www/html
ADD . ./

EXPOSE 80