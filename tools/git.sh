#!/bin/bash


# Git Setup Multiple Repository
git remote add gitlab git@gitlab.com:progwebapp/project_status.git
git remote set-url --add --push origin git@gitlab.com:progwebapp/project_status.git

git remote add github git@github.com:ProgWebApp/Project_Status.git
git remote set-url --add --push origin git@github.com:ProgWebApp/Project_Status.git


# Display Config
git remote show origin

git config --list
