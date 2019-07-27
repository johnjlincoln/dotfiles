#!/bin/bash
# WIP - Comment each command
docker stop $(docker ps -a -q)
docker system prune -a
docker volume prune
