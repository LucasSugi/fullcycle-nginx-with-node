ARG PLATFORM=linux/amd64
FROM --platform=$PLATFORM node:18
WORKDIR /home/node/app
COPY /app .
RUN npm install --save
RUN npm install nodemon -g
ENTRYPOINT [ "tail", "-f"]
