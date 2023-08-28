REQUIREMENT= wordpress nginx mariadb
REQU_PATH=   $(addprefix srcs/requirements/, $(REQUIREMENT))
VOLUME= wp
VOLUME_PATH=   $(addprefix $(HOME)/data/, $(VOLUME))

all:
	for i in $(VOLUME_PATH); do mkdir -p $$i; done
	docker compose -f srcs/docker-compose.yml up

clean:
	-docker compose -f srcs/docker-compose.yml down
	-docker volume rm srcs_inception_volume
	-for i in $(REQUIREMENT); do docker image rm -f srcs-$$i; done
	-sudo rm -rf ~/data/wp/* 

stop:
	docker compose -f srcs/docker-compose.yml down

re: clean all
