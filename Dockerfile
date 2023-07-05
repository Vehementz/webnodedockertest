# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the image
COPY package*.json ./

# Install the application's dependencies in the image
RUN npm install

# Copy the rest of the application into the image
COPY . .

# Expose port 3000 to the outside
EXPOSE 3000

# Define the command that should be run when the Docker container starts
CMD [ "node", "app.js" ]
