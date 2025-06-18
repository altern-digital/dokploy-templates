FROM node:20-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY . .

WORKDIR /app/app

RUN pnpm install

EXPOSE 5173

CMD ["pnpm", "run", "dev", "--host", "0.0.0.0"]
