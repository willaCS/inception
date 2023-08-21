#!/bin/sh

# exit_if_fail(){
# 	if [ $? -gt 0 ]; then
# 		echo "[ERROR]"
# 		exit 1;
# 	fi
# }

# check_db () {
# 	wp db check
# }

# run_install () {
# 	echo "[INFO] Create wordpress config"
# 	wp config create \
# 		--dbname=$SQL_DATABASE \
# 		--dbuser=$SQL_USER \
# 		--dbpass=$SQL_PASSWORD \
# 		--dbhost=$SQL_HOST
# 	exit_if_fail;
	
# 	check_db;
# 	exit_if_fail;

# 	echo "[INFO] Install and create admin user"
# 	wp core install \
# 		--url=$WP_URL \
# 		--title="$WP_TITLE" \
# 		--admin_user=$WP_ADMIN_NAME \
# 		--admin_password=$WP_ADMIN_PASSWD \
# 		--admin_email=$WP_ADMIN_EMAIL
# 	exit_if_fail;

# 	echo "[INFO] Create $WP_USER_NAME user"
# 	wp user create $WP_USER_NAME $WP_USER_EMAIL \
# 		--user_pass=$WP_USER_PASSWD \
# 		--display_name=$WP_USER_DISPLAY_NAME 
# 	exit_if_fail;
# }

# wp config path 2>/dev/null

# if [ $? -eq 0 ]; then
# 	check_db;
# else
# 	run_install;
# fi

php-fpm7.4 -F