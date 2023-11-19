# Use the official Node.js image as the base image
FROM node:20:3-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your application will run on
EXPOSE 8000

# Define the command to run your application
CMD ["node", "index.js"]
