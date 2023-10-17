ARG PLATFORM=linux/amd64
FROM --platform=$PLATFORM nginx:1.24
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
CMD ["nginx-debug", "-g", "daemon off;"]
