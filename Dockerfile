# Use Node.js 12
FROM node:12-alpine

# Bundle app source
COPY . .

# Expose the right port
EXPOSE 2002
CMD [ "npm", "start" ]