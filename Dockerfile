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

#######################################
###        CLIENT REACT APP         ###
#######################################
# Create app directory
WORKDIR /usr/src/app/web

# Install app dependencies 
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY web/package*.json ./

# install node dependencies
RUN npm i

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY web/ . 

# builds react app
RUN npm run build


WORKDIR /usr/src/app

EXPOSE 8080
CMD [ "npm", "run", "start" ]