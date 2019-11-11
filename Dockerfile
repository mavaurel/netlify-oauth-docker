FROM node:10-alpine

ENV PORT=3000
EXPOSE ${PORT}

COPY . .

RUN npm install

CMD [ "npm", "start"]