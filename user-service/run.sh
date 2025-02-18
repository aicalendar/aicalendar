#!/bin/bash

# Load environment variables from .env file
source .env

# Run the api-user-service with environment variables
docker run -d \
  --name api-user-service \
  -e DB_HOST=${DB_HOST} \
  -e DB_PORT=${DB_PORT} \
  -e DB_NAME=${DB_NAME} \
  -e DB_USER=${DB_USER} \
  -e DB_PASSWORD=${DB_PASSWORD} \
  -e REDIS_HOST=${REDIS_HOST} \
  -e REDIS_PORT=${REDIS_PORT} \
  -e REDIS_PASSWORD=${REDIS_PASSWORD} \
  ghcr.io/aicalendar/api-user-service:latest
