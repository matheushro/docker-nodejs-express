# Dockerfile for a Node.js application
# This Dockerfile sets up a Node.js environment, installs dependencies, and runs the application.

# Use the official Node.js image as a base (version 22)
FROM node:22

# Set the working directory inside the container
# All subsequent commands will be run in this directory
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory
# This allows Docker to cache the npm install step
# to ensure that dependencies are only reinstalled when they change
COPY package*.json ./

# Install the application dependencies
# This will run npm install in the /app directory
RUN npm install

# Copy the rest of the application code to the working directory
# This includes all files in the current directory except those ignored by .dockerignore
COPY ./src /app/src

# Expose the port that the application will run on
# This is the port that will be accessible from outside the container
EXPOSE 2000

# Set the command to run the application
# This will start the Node.js application using the index.js file
CMD ["npm", "run", "dev"] 