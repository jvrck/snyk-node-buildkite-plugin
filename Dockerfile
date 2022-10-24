FROM node:current-alpine3.16

WORKDIR /app

COPY scan.sh /scripts/scan.sh
RUN chmod +x /scripts/scan.sh

RUN apk update && \
    apk add --no-cache bash && \
    npm install -g snyk

ENV PATH "$PATH:/scripts"

CMD [ "scan.sh" ]
