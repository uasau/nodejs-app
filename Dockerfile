FROM node:8.7.0-alpine


RUN mkdir -p /usr/src/app && \
    chown -R root:root /usr/src && \
    chmod -R 777 /usr/src

WORKDIR /usr/src/app

COPY . .

CMD [ "npm", "start" ]
