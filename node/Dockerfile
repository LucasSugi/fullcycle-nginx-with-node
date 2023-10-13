FROM node:14.17.0-slim
WORKDIR /home/node/app
COPY /app .
RUN npm install --save
RUN npm install nodemon -g
ENTRYPOINT [ "tail", "-f"]
