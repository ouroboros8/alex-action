FROM node:lts-alpine

WORKDIR /alex
RUN npm install --global alex

ENTRYPOINT ["alex"]
