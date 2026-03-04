# Use official Node image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

# Expose port
EXPOSE 5000

# Start the server
CMD ["npm", "start"]