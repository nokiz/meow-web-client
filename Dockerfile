FROM node:18

# Create api directory
WORKDIR /home/web-client

# Copy source files
COPY . .
RUN npm install

# Expose port 3000
EXPOSE 3000

# Define the command to run your app
RUN npm run build
RUN npm install -g serve
CMD serve -s build
