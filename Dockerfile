#Get an official node.js image from docker hub
FROM node:14-alpine
#setting working directory for react app from where files are saved inside a container
WORKDIR /usr/src/app
#this is to copy all package lock and package .json files to the working directory
COPY package*.js ./
#install dependencies
RUN npm install
#copy rest of the files in the source code'src'
COPY . .
#this is to build the application
RUN npm run build
# Expose the port application will run on
EXPOSE 3000
#command to start the application
CMD ["npm","start"]
