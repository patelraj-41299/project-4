# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port your backend uses
EXPOSE 3000

# Start the backend server
CMD ["npm", "start"]
