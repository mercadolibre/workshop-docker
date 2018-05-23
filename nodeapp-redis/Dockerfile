FROM node:alpine

COPY package.json package-lock.json ./

RUN npm install && npm cache clean --force

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
