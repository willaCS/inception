FROM node:19-alpine

WORKDIR /app

COPY ./srcs .

RUN npm install

EXPOSE 4000

CMD ["node", "app.js"]