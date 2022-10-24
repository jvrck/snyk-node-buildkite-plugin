FROM node:current-alpine3.16

WORKDIR /app

COPY scan.sh /app

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

CMD [ "./app/scan.sh" ]