# Development Stage
FROM node:18-bookworm-slim
WORKDIR /usr/app
USER 1000

RUN curl -fsSL https://bun.sh/install | bash

ADD package.json,bun.lockb .

RUN bun install

ADD . .

RUN bunx vue-tsc --noEmit && bunx vite build


# Production Stage
FROM nginx:1-alpine-slim
