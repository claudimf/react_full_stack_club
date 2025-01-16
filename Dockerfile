FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY . .
RUN npm install

# Expose the development server port
EXPOSE 3000

# Start the Vite development server
CMD ["npm", "run", "dev"]