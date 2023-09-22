build-dev: backend-build-dev

start-dev: backend-start-dev-d

build: backend-build

start: backend-start-d

publish: backend-publish


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
