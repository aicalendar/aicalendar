#!/bin/bash

# Load environment variables from .env file
source .env

# Run the app-web service
docker run -d \
  --name app-web \
  --restart unless-stopped \
  -p 80:80 \
  ghcr.io/aicalendar/app-web:latest
