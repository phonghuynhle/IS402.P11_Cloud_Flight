FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --force or --lagecy-peer-deps

COPY . .

COPY .env.sample .env

RUN chown -R root:root /app

EXPOSE 3030 4040 3001 3002 3003

CMD ["npm", "start"]

