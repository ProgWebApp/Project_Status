build-dev: frontend-build-dev backend-build-dev

start-dev: frontend-start-dev-d backend-start-dev-d

build: frontend-build backend-build

start: frontend-start-d backend-start-d

publish: frontend-publish backend-publish


frontend-bash:
	docker compose -f ./frontend/docker/compose.dev.yml run --rm --service-ports frontend bash

frontend-build-dev:
	docker compose -f ./frontend/docker/compose.dev.yml build
	docker compose -f ./frontend/docker/compose.dev.yml run --rm frontend bun install

frontend-start-dev:
	docker compose -f ./frontend/docker/compose.dev.yml up

frontend-start-dev-d:
	docker compose -f ./frontend/docker/compose.dev.yml up -d

frontend-lint:
	echo "TODO"
	docker compose -f ./frontend/docker/compose.dev.yml run --rm frontend bun lint

frontend-format:
	echo "TODO"
	docker compose -f ./frontend/docker/compose.dev.yml run --rm frontend bun format

frontend-build:
	docker compose -f ./frontend/docker/compose.yml build

frontend-start:
	docker compose -f ./frontend/docker/compose.yml up

frontend-start-d:
	docker compose -f ./frontend/docker/compose.yml up -d

frontend-publish:
	echo "TODO"
	docker compose -f ./frontend/docker/compose.yml push TODO


backend-bash:
	docker compose -f ./backend/docker/compose.dev.yml run --rm --service-ports backend sh

backend-build-dev:
	docker compose -f ./backend/docker/compose.dev.yml build

backend-start-dev:
	docker compose -f ./backend/docker/compose.dev.yml up

backend-start-dev-d:
	docker compose -f ./backend/docker/compose.dev.yml up -d

backend-build:
	docker compose -f ./backend/docker/compose.yml build

backend-start:
	docker compose -f ./backend/docker/compose.yml up

backend-start-d:
	docker compose -f ./backend/docker/compose.yml up -d

backend-publish:
	echo "TODO"
	docker compose -f ./backend/docker/compose.yml push TODO
