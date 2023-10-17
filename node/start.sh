#!/bin/sh
dockerize -wait tcp://db:3306 -wait-retry-interval 5s -timeout 60s
echo "Installing node packages"
npm install --save
node server.js
