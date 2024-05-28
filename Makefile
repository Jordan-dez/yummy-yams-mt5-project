.SILENT=

API_CONTAINER_SERVICE_ID:=$(shell docker ps -qf name=yummy-yams-mt5-project-backend)
APP_CONTAINER_ID:=$(shell docker ps -qf name=yummy-yams-mt5-project-frontend)

start_all:
	@echo "Starting all services"
	docker-compose up -d

stop_all:
	@echo "Stopping all services"
	docker-compose down

api_sh:
	@echo "Entering comment service"
	docker exec -it $(API_CONTAINER_SERVICE_ID) /bin/bash

app_sh:
	@echo "Entering query service"
	docker exec -it $(APP_CONTAINER_ID) /bin/bash