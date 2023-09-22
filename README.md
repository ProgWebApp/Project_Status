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

- **Backend** :
  - [Local Admin](http://localhost:8090/_/)
  - [Local API](http://localhost:8090/api/)

## Technologies

- **Backend** :
  - **Framework** : PocketBase
  - **Database** : SQLite

## Documentations

- [Ideas](./docs/ideas.md)
- [Analysis](./docs/analysis.md)
- [Commands](./docs/commands.md)
