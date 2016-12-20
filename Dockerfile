from ubuntu:latest
maintainer toastbroad
run apt-get update
run apt-get install -y software-properties-common
run add-apt-repository ppa:ondrej/php
run apt-get install -y nginx php7.0 php7.0-fpm mcrypt php7.0-mcrypt curl
run apt-get install -y git sudo
run apt-get install -y php7.0-zip php-mbstring php-xml
run curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& composer global require "laravel/installer" 
run rm -v /etc/nginx/sites-available/default
add nginx-default /etc/nginx/sites-available/default
add bootstrap.sh /etc/bootstrap.sh
run chmod +x /etc/bootstrap.sh
run ln -s -f /root/.composer/vendor/bin/* /usr/local/bin/ 
run mkdir /run/php
cmd ["/etc/bootstrap.sh"]
