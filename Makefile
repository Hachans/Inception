SRC = ./srcs/docker-compose.yaml

all: clean up

up:
	docker-compose -f $(SRC) up -d --build

down:
	docker-compose -f $(SRC) down

clean: 
	docker system prune -af
