FROM node:18.16.0-alpine3.18

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

ENV PORT 8080
ENV NODE_ENV production

EXPOSE 8080
ENTRYPOINT [ "node", "index.js" ]
