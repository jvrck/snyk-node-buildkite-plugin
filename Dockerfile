FROM node:current-alpine3.16

WORKDIR /app

COPY scan.sh /scan.sh
RUN chmod +x /scan.sh

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

CMD [ "sh" "/scan.sh" ]