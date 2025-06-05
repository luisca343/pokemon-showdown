# Use a Node.js base image
FROM node:21-alpine3.18

# Set working directory
WORKDIR /app

# Copy the entire project directory into the Docker image
COPY . .

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 8000

# Command to run the server
CMD ["node", "./dist/server/index.js"]