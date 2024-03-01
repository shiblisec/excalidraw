FROM node:18


RUN mkdir excalidraw

COPY . ./excalidraw

WORKDIR ./excalidraw

ARG NODE_ENV=development

ENV VITE_APP_PORT=1337

RUN yarn --ignore-optional

EXPOSE 3000

CMD [ "yarn", "start"]
