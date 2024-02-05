# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the application files to the working directory
COPY . .

# Expose the port that the app will run on
EXPOSE 4200

# Define the command to run the app
CMD ["npm", "start"]
