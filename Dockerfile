# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Define the command to run the app
CMD ["npm", "start"]
