openrc default
./etc/init.d/mariadb setup
rc-service mariadb start
mysql < /var/create.sql
mysql wordpress  < /var/wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe --datadir='/var/lib/mysql'
