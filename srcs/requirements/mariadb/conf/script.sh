#!/bin/bash

cat /tmp/query.sql \
| sed "s/SQL_USER/$SQL_USER/g" \
| sed "s/SQL_DATABASE/$SQL_DATABASE/g" \
| sed "s/SQL_PASSWORD/$SQL_PASSWORD/g" \
> /tmp/query.sql

sed -i 's/bind-address\s*= *[^ ]*/bind-address = 0.0.0.0\nport = 3306/g' /etc/mysql/mariadb.conf.d/50-server.cnf
mysqld_safe --init-file=/tmp/query.sql