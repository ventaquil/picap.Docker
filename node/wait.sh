#!/bin/sh

# Wait for application
echo "Waiting for application files..."
directories=$(ls -1 / | grep application | wc -l)
while [ $directories -eq 0 ]
do
    echo "" > /dev/null
done

# Change to application's directory
cd /application

# Install node's dependencies
if [ $(ls -1 /application | grep node_modules | wc -l) -eq 0 ]
then
    echo "Running `npm install`..."

    npm install
fi

# Run application
echo "Running application..."
node application.js

