FROM nginx:latest
RUN apt-get update && apt-get install -y \
    iputils-ping \
    htop \
    vim  && rm -rf /var/lib/apt/lists/* && mkdir /etc/nginx/ssl
