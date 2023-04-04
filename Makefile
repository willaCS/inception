build:
	sudo docker-compose -f srcs/docker-compose.yml up --detach

stop:
	sudo docker-compose -f srcs/docker-compose.yml down

delete:
	sudo docker-compose -f srcs/docker-compose.yml rm