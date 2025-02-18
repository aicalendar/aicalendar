#!/bin/bash

# Load environment variables from .env file
source .env

docker volume create database_data

# Run the database service
docker run -d \
  --name database \
  -e POSTGRES_DB=${DB_NAME} \
  -e POSTGRES_USER=${DB_USER} \
  -e POSTGRES_PASSWORD=${DB_PASSWORD} \
  -p ${DB_PORT}:${DB_PORT} \
  -v database_data:/var/lib/postgresql/data \
  --restart always \
  postgres:17.3-alpine
