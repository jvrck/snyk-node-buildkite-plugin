FROM node:current-alpine3.16

WORKDIR /app

COPY scan.sh /
RUN chmox +x /scan.sh

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

CMD [ "./scan.sh" ]