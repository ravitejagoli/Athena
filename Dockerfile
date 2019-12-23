# Use Node.js 12
FROM node:12-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the right port
EXPOSE 2002
CMD [ "npm", "start" ]