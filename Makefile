DOCKER = docker-compose
FILE = ./srcs/docker-compose.yml

PS = $(shell docker ps -qa)
IMAGES = $(shell docker images -qa)
VOLUMES = $(shell docker volume ls -q)
NETWORK = $(shell docker networks ls -q)

.PHONY: up clean rebuild stop fclean re 

up:
	$(DOCKER) -f $(FILE) up

all:	up

clean:
	$(DOCKER) -f $(FILE) down

rebuild:
	$(DOCKER) -f $(FILE) up --build

stop:
	$(DOCKER) -f $(FILE) stop

fclean:	clean
	docker rmi -f $(IMAGES)
	docker volume rm $(VOLUMES)
	docker system prune --force

re: fclean up
