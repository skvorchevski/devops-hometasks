FROM debian
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php
COPY index.php /var/www/html/index.php
RUN rm -f /var/www/html/index.html
CMD ["apache2ctl", "-DFOREGROUND"]