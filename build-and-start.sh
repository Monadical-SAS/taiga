#!/bin/bash

# This script builds and starts the Taiga project

echo "Building Taiga Docker images..."
docker compose build

echo "Starting Taiga services..."
docker compose up -d

echo "Taiga should now be accessible at http://localhost:9000"
echo "To create a superuser, run: ./taiga-manage.sh createsuperuser"
echo "To stop the services, run: docker compose down"