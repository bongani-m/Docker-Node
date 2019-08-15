from node:10-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies 
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# install node dependencies
RUN npm i

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . . 

EXPOSE 8080
CMD [ "npm", "run", "start" ]