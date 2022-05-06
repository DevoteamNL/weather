FROM docker.io/node:18-alpine3.14
WORKDIR /app
ADD . /app/
RUN apk add curl && npm install
EXPOSE 3000
ENTRYPOINT [ "node", "src/app.js" ]