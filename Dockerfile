FROM nginx:alpine
# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./public /usr/share/nginx/html/
# COPY /Users/chris/landing/build/static/images /usr/share/nginx/html/static/
#COPY nginx.conf /etc/nginx
ADD ./nginx.conf /etc/nginx/
COPY ./redirects.map /etc/nginx/redirects.map

ENV NGINX_PORT=8080