FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY . .
RUN npm install

RUN npm install -D tailwindcss@3.4.10 postcss@8.4.41 autoprefixer@10.4.20
RUN npm install -D lucide-react@0.435.0
RUN npm install -D uuid@10.0.0
RUN npm install -D react-router-dom@6.26.1

# Expose the development server port
EXPOSE 3000

# Start the Vite development server
CMD ["npm", "run", "dev"]