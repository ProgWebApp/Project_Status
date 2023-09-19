# Project Status

![Icon](./icon.png)

[Project icons created by Freepik](https://www.flaticon.com/free-icons/project)

## Table Of Contents

- [Project Status](#project-status)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Getting Started](#getting-started)
  - [Development](#development)
    - [Requirements](#requirements)
    - [Build and Deploy](#build-and-deploy)
    - [Access](#access)
  - [Technologies](#technologies)
  - [Documentations](#documentations)

## Description

Manage Projects with this web application.

## Getting Started

You can use this Docker Compose to launch this whole project in production :

```yaml
# TODO Docker Compose with production image
---
name: project-status

networks:
  project-status-net:
    name: project-status-net

volumes:
  project-status-data:
    name: project-status-data

services:
  project-status-frontend:
    container_name: project-status-frontend

  project-status-backend:
    container_name: project-status-backend
```

## Development

1) First of all, you need to install some [requirements](#requirements).
2) Next [Build and Deploy](#build-and-deploy) your backend or frontend.
3) You can develop on it !

### Requirements

- **MakeFile**
- **Docker** : Just Docker, nothing more.

### Build and Deploy

The **MakeFile way** with **Docker** :

- **Frontend** :
  - `make frontend-bash` : Launch Bash in Frontend Development Environment
  - `make frontend-build-dev` : Build Frontend for Development
  - `make frontend-start-dev` : Start Frontend Development Server
  - `make frontend-lint` : Lint Frontend source codes
  - `make frontend-format` : Format Frontend source codes
  - `make frontend-build` : Build Frontend for Production
  - `make frontend-start` : Start Frontend Production Server
  - `make frontend-publish` : Publish Frontend Production Image
- **Backend** :
  - `make backend-bash` : Launch Bash in Backend Development Environment
  - `make backend-build-dev` : Build Backend for Development
  - `make backend-start-dev` : Start Backend Development Server
  - `make backend-build` : Build Backend for Production
  - `make backend-start` : Start Backend Production Server
  - `make backend-publish` : Publish Backend Production Image
- **All** :
  - `make build-dev` : Build Frontend and Backend for Development
  - `make start-dev` : Start Frontend and Backend Development Server
  - `make build` : Build Frontend and Backend for Production
  - `make start` : Start Frontend and Backend Production Server
  - `make publish` : Publish Frontend and Backend Production Image

### Access

- **Frontend** :
  - [Local](http://localhost:3000)
- **Backend** :
  - [Local Admin](http://localhost:8090/_/)
  - [Local API](http://localhost:8090/api/)

## Technologies

- **Frontend** :
  - **Framework** : VueJS 3
  - **CSS Framework** : Vuetify 3
- **Backend** :
  - **Framework** : PocketBase
  - **Database** : SQLite

## Documentations

- [Ideas](./docs/ideas.md)
- [Analysis](./docs/analysis.md)
- [Commands](./docs/commands.md)
