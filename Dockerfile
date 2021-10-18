FROM node:latest

WORKDIR /app

ENV PATH /app/node_modules.bin:$PATH

COPY . .
COPY package*.json .
RUN npm i

CMD ["npm", "start"]

