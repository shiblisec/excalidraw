FROM node:18-slim

RUN mkdir excalidraw

COPY package.json yarn.lock ./excalidraw

ARG NODE_ENV=production

WORKDIR ./excalidraw

RUN yarn --ignore-optional

RUN yarn cache clean

EXPOSE 3000

CMD [ "yarn", "start"]
