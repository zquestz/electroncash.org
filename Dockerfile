FROM alpine:3.7
RUN apk add --update --no-cache curl bash

FROM nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/

# Remove uneeded files
RUN rm /usr/share/nginx/html/nginx.conf

#CMD ["bash"]
