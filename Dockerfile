FROM node:18

RUN mkdir excalidraw

COPY . ./excalidraw

ARG NODE_ENV=production

WORKDIR ./excalidraw

RUN yarn --ignore-optional

EXPOSE 3000

CMD [ "yarn", "start"]
