#!/bin/bash

echo "Installing backend dependencies..."
cd /home/ec2-user/backend
npm install

echo "Installing frontend dependencies..."
cd /home/ec2-user/frontend
npm install
