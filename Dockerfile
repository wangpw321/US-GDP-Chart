FROM nginx 

COPY container /
COPY build /usr/share/nginx/html

ENV API_KEY '53d0f6f87bc2fd7703ca56d2b11ebcf0'

CMD /bin/bash -c "envsubst '\$API_KEY' < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"