FROM node:20-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY . .

WORKDIR /app/app

RUN pnpm install
RUN pnpm run build

EXPOSE 4173

CMD ["pnpm", "run", "preview"]