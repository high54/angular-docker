FROM node:latest  AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run serve
EXPOSE 4200
