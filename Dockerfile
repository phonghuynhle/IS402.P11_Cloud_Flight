FROM node:18-alpine

WORKDIR /app/backend

COPY package*.json ./

RUN npm install --force or --lagecy-peer-deps

COPY . .

COPY .env.sample .env

EXPOSE 3030 4040 3001 3002 3003

CMD ["npm", "start"]

