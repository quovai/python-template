.PHONY: build run shell clean

# Build the Docker image (rebuilds if requirements.txt changed)
build:
	docker-compose build

# Run the application
run:
	docker-compose run --rm python-app python main.py

# Open an interactive shell in the container
shell:
	docker-compose run --rm python-app bash

# Clean up containers and images
clean:
	docker-compose down --rmi local
