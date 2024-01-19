# This is alright now

FROM node:20

WORKDIR /usr/src/root

COPY package*.json ./

RUN npm install pnpm -g

RUN pnpm install

COPY . .

RUN pnpm run build

CMD ["node", "src/index.js"]

