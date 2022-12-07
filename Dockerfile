
FROM node:8

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV test

EXPOSE 8005 

CMD ["node", "index.js"]


