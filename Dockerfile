FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install --force or --lagecy-peer-deps

COPY . .

COPY .env.sample .env

RUN chown -R root:root /app

EXPOSE 4040

CMD ["npm", "start"]

