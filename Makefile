DC = docker compose

.PHONY: up down logs ps psql

up:
	$(DC) up -d

down:
	$(DC) down

logs:
	$(DC) logs -f

ps:
	$(DC) ps

psql:
	$(DC) exec postgres psql -U blog -d blogdb

sh:
	$(DC) exec postgres bash

reset:
	$(DC) down -v
	$(DC) up -d

