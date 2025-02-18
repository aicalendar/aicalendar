#!/bin/bash

# Load environment variables from .env file
source .env

# Run the nginx service
docker run -d \
  --name nginx \
  --restart unless-stopped \
  -v ./nginx.conf:/etc/nginx/nginx.conf:ro \
  -p 80:80 \
  nginx:1.27.4-alpine
