#!/bin/sh

/usr/local/bin/composer install
/usr/local/bin/composer dump-autoload --optimize

exec /usr/sbin/apache2ctl -D FOREGROUND
