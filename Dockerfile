# pull the base image
FROM node:latest

#set the working directory
WORKDIR /app

#add .bin to the path
ENV PATH /app/node_modules.bin:$PATH

# copy the project && package*.json
COPY . .
COPY package*.json .

# install app dependencies
RUN npm i

# start the app
CMD ["npm", "start"]

