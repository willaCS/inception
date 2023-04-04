build:
	sudo docker-compose -f srcs/docker-compose.yml build

start:
	sudo docker-compose -f srcs/docker-compose.yml up -d

stop:
	sudo docker-compose -f srcs/docker-compose.yml down

delete:
	sudo docker-compose -f srcs/docker-compose.yml rm