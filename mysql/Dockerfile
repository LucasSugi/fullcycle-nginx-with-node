ARG PLATFORM=linux/amd64
FROM --platform=$PLATFORM mysql:5.7
COPY /init_scripts /docker-entrypoint-initdb.d
EXPOSE 3306
