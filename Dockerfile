FROM keymetrics/pm2:latest-alpine

WORKDIR /app
ADD . /app

ENV PORT 3000
RUN npm install
RUN ls -al -R | grep -v 'node_modules'

EXPOSE 3000

CMD [ "pm2-runtime", "start", "pm2.json" ]