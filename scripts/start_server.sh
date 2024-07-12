#!/bin/bash

# Navigate to the app directory
cd /var/www/html/my-app

# Install dependencies
npm install

# Build the Angular app for production
ng build --prod

# Copy the built files to the Apache document root
sudo cp -r dist/my-app/* /var/www/html/

# Restart Apache to serve the new files
sudo systemctl restart apache2

