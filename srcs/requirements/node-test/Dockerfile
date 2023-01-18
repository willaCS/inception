FROM node:19-alpine

WORKDIR /app

COPY /srcs/package.json .

RUN npm install

COPY ./srcs .

EXPOSE 4000

CMD ["node", "app.js"]