FROM node:12-alpine

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#copy for directory
COPY . /usr/src/app

#Run npm install
RUN npm install

#Bundle app source
COPY . . 

ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "node", "index.js"]
