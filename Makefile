.PHONY: help
help:
	@printf "Usage: make \033[36m<target>\033[0m\n"
	@printf "\n"
	@awk 'BEGIN {FS = ":.*##";} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

DOCKER_COMPOSE := docker compose

##@ Docker
.PHONY: build up down restart logs

build: ## Build the docker images
	$(DOCKER_COMPOSE) build

up: ## Start the containers
	$(DOCKER_COMPOSE) up -d

down: ## Stop the containers
	$(DOCKER_COMPOSE) down

restart: ## Restart the containers
	$(DOCKER_COMPOSE) restart

logs: ## Show the logs
	$(DOCKER_COMPOSE) logs -f

##@ Development
.PHONY: php php-shell mysql-shell

php: ## Run a PHP command in the PHP container (e.g. make php composer install) or run an bash shell (e.g. make php bash)
	$(DOCKER_COMPOSE) exec app $(filter-out $@,$(MAKECMDGOALS))

php-shell: ## Run a bash shell in the PHP container
	$(DOCKER_COMPOSE) exec app bash

##@ Tests
.PHONY: test

test: ## Run the tests
	$(DOCKER_COMPOSE) exec app php artisan test

##@ Code validation
grumphp: ## Run code validation
	./vendor/bin/grumphp run

##@ Utilities
.PHONY: fix-permissions

fix-permissions: ## Fix the permissions of the files in the project
	sudo chown -R $(shell id -u):$(shell id -g) .
	chmod -R 777 bootstrap/cache storage
