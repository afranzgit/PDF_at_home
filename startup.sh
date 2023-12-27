#!/bin/bash

# Define the network name
NETWORK_NAME="dockerFranz"

# Create the Docker network
docker network rm $NETWORK_NAME
docker network create $NETWORK_NAME
docker network ls

# Check if network creation was successful
if [ $? -eq 0 ]; then
    echo "Docker network '$NETWORK_NAME' created successfully."
else
    echo "Failed to create Docker network '$NETWORK_NAME'. Exiting."
    exit 1
fi

# Run Docker Compose
docker-compose up --build

if [ $? -eq 0 ]; then
    echo "Docker Compose executed successfully."
else
    echo "Docker Compose failed to execute."
fi
