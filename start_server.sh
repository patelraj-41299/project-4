#!/bin/bash

echo "Starting backend server..."
# Kill any running node processes
killall node || true

# Start backend server
cd /home/ec2-user/backend
nohup npm start > backend.log 2>&1 &

echo "Starting frontend server..."
# Serve frontend build (on port 3000)
cd /home/ec2-user/frontend/build
nohup npx serve -s . -l 3000 > frontend.log 2>&1 &
