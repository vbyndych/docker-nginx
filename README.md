# docker-nginx [![](https://images.microbadger.com/badges/image/vbyndych/oro-docker-nginx.svg)](https://microbadger.com/images/vbyndych/oro-docker-nginx "Get your own image badge on microbadger.com") 
NGINX image for ORO

## docker-compose.yml config example:

```
nginx:
    image: vbyndych/oro-docker-nginx:latest
    links:
        - php
    volumes:
        - ./:/var/www/html
    environment:
        SERVER_NAME: "example.com"
        WEB_FOLDER_PATH: .
    labels:
        com.dnsdock.alias: example.com
```