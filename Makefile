.SILENT=
API_CONTAINER_ID:=$(shell docker ps -qf name=microservices-challenge_api)
APP_CONTAINER_ID:=$(shell docker ps -qf name=microservices-challenge_app)

start:
	docker-compose up -d

server_sh:
	docker exec -it $(API_CONTAINER_ID) /bin/bash

client_sh:
	docker exec -it $(APP_CONTAINER_ID) /bin/bash

down:
	docker-compose down