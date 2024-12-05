# Stage 1: Build the Node.js backend application
FROM node:16 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port (change if your backend listens on another port)
EXPOSE 3000

# Start the backend application
CMD ["npm", "start"]
