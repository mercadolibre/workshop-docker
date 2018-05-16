FROM ubuntu:latest

RUN apt-get update
RUN apt-get install --no-install-recommends -y nodejs npm ca-certificates
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
