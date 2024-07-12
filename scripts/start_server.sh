#!/bin/bash

# Navigate to the app directory
cd /var/www/html/my-app

# Install dependencies
npm install

# Build the Angular app for production
#nohup ng serve --host 0.0.0.0 --disable-host-check > /dev/null 2>&1 &
ng serve --host 0.0.0.0 --disable-host-check 
