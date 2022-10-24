FROM node:current-alpine3.16

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

COPY source dest