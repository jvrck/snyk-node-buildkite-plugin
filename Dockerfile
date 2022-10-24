FROM node:current-alpine3.16

WORKDIR /app

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

CMD [ "npm ci && npm snyk test --severity-threshold=$SEVERITY" ]