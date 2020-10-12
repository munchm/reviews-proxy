FROM node:14.7.0

RUN mkdir -p /src/app

COPY . /src/app

WORKDIR /src/app

COPY package.json ./

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]