FROM node:14.19-alpine3.14

WORKDIR  /usr/src/app

COPY package.json ./

RUN apk add --update python2 make g++\
   && rm -rf /var/cache/apk/*


RUN npm install

COPY . .

ENV NODE_ENV test

EXPOSE  51005

CMD ["node","index.js"]
