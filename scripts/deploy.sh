#!/bin/bash

echo "Starting deployment..."

git clone REPOSITORY_URL

sudo cp -r project/* /var/www/html/

sudo systemctl restart apache2

echo "Deployment Successful"
