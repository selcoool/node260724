FROM node:22.5-alpine

# # Base image
# FROM node:14-alpine
# Set working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application
COPY . .
# Start the Node.js application
CMD ["npm", "start"]
# Expose port 5000
EXPOSE 5000