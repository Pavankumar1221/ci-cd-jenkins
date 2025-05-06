# Use the official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app code
COPY . .

# Command to run the app
CMD ["npm", "start"]

# Expose port (optional if running on container only)
EXPOSE 3030
