# Define the services
SERVICES = frontend backend

# Default command when typing 'make'
default: up

# Build Docker images
build:
	docker compose build $(SERVICES)

# Start the containers
up:
	docker compose up -d $(SERVICES)

# View container logs
logs:
	docker compose logs -f $(SERVICES)

# Stop the containers
stop:
	docker compose stop $(SERVICES)

# Remove the containers
down:
	docker compose down

# Stop and remove containers, networks, images, and volumes
clean: down
	docker system prune -f

# Enter the frontend container
frontend-bash:
	docker compose exec frontend bash

# Enter the backend container
backend-bash:
	docker compose exec backend bash

.PHONY: default build up logs stop down clean frontend-bash backend-bash
