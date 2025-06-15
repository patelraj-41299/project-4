#!/bin/bash
cd /home/ec2-user/backend
npm install pm2 -g
pm2 start server.js  # (replace server.js with your actual file if needed)
pm2 save
