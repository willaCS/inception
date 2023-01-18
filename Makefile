build:
	cd ./srcs; docker-compose up --detach

stop:
	cd ./srcs; docker-compose down

delete:
	cd ./srcs; docker-compose rm