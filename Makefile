.SILENT=

COMMENTS_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=comments)
QUERY_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=query)
POSTS_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=posts)
APP_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=app)
MODERATION_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=moderation)
EVENT_BUS_SERVICE_CONTAINER_ID:=$(shell docker ps -qf name=event-bus)

start_all:
	@echo "Starting all services"
	docker-compose up -d

stop_all:
	@echo "Stopping all services"
	docker-compose down

comments_sh:
	@echo "Entering comment service"
	docker exec -it $(COMMENTS_SERVICE_CONTAINER_ID) /bin/bash

query_sh:
	@echo "Entering query service"
	docker exec -it $(QUERY_SERVICE_CONTAINER_ID) /bin/bash

posts_sh:
	@echo "Entering posts service"
	docker exec -it $(POSTS_SERVICE_CONTAINER_ID) /bin/bash

app_sh:
	@echo "Entering app service"
	docker exec -it $(APP_SERVICE_CONTAINER_ID) /bin/bash

moderation_sh:
	@echo "Entering moderation service"
	docker exec -it $(MODERATION_SERVICE_CONTAINER_ID) /bin/bash

event_bus_sh:
	@echo "Entering event bus service"
	docker exec -it $(EVENT_BUS_SERVICE_CONTAINER_ID) /bin/bash
