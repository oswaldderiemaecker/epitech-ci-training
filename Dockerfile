FROM node:12
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm test
CMD ["node", "server.js"]