#!/bin/bash

# Load environment variables from .env file
source .env

# Run the redis service
docker run -d \
  --name redis \
  --restart unless-stopped \
  -e REDIS_PASSWORD=${REDIS_PASSWORD} \
  -p ${REDIS_PORT}:${REDIS_PORT} \
  redis:7.4.2-alpine \
  sh -c "redis-server --requirepass ${REDIS_PASSWORD}"
