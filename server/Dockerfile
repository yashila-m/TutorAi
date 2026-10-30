FROM node:22-alpine AS build

WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY server.js ./

FROM node:22-alpine

WORKDIR /app

COPY --from=build --chown=node:node /app /app

RUN rm -rf /usr/local/lib/node_modules/npm \
    /usr/local/lib/node_modules/corepack \
    /usr/local/bin/npm \
    /usr/local/bin/npx \
    /usr/local/bin/corepack

ENV NODE_ENV=production
ENV PORT=5050

EXPOSE 5050

USER node

CMD ["node", "server.js"]