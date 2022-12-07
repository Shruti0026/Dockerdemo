FROM node:8.16.0

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/myapp

COPY package*.json /usr/src/app/

RUN npm install

COPY . /usr/src/myapp

ENV NODE_ENV test

EXPOSE 51005

CMD ["node", "index.js"]