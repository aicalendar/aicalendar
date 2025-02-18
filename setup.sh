#!/bin/bash

# Exit script if any command fails
set -e

# Update package database
echo "Updating package database..."
sudo apt update -y

# Install dependencies
echo "Installing dependencies..."
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker’s official GPG key
echo "Adding Docker’s GPG key..."
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Add Docker repository
echo "Adding Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Update package database again
echo "Updating package database again..."
sudo apt update -y

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker-ce

# Start and enable Docker to run on boot
echo "Starting and enabling Docker..."
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Final message
echo "Docker installation is complete!"
echo "You may need to log out and log back in for the group changes to take effect."
