FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install express express-jwt auth0-api-jwt-rsa-validation --save

ENV DB_HOST=10.38.128.3


# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]