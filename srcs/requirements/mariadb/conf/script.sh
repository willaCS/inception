#!/bin/bash

cat /tmp/query.sql \
| sed "s/SQL_USER/$SQL_USER/g" \
| sed "s/SQL_DATABASE/$SQL_DATABASE/g" \
| sed "s/SQL_PASSWORD/$SQL_PASSWORD/g" \
> /tmp/query.sql

mysqld_safe --init-file=/tmp/query.sql