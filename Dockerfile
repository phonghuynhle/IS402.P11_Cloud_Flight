FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY .env.sample .env

EXPOSE 3030

RUN npm install -g concurrently

CMD ["npm", "run", "start:all"]
