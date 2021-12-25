# Task for interview

## Build docker image


```bash
docker build -t webserver .
```

## Run infrastructure


```bash
docker-compose  up -d
```

## Command for control

```bash
#enter client
docker exec -it nginx_prox_arm_1 bash
#in this client shell
curl -kGi https://test-admin.local.net #straight to backend nginx
curl -kGi https://nginx_prox_frontend_1 #accross frontend nginx
curl -kGi https://nginx_prox_backend_1:443 #straight to backend nginx
#the same output for client

docker logs -n 3 nginx_prox_backend_1 
#the same output for backend nginx

```

## Command for debug
```bash
curl -kGi https://nginx_prox_frontend_1
curl -kGi https://frontnginx.local.net
curl -kGI https://nginx_prox_backend_1:443
curl -kGI https://test-admin.local.net

docker logs -n 1 nginx_prox_backend_1


docker exec nginx_prox_frontend_1 nginx -s reload
ls
docker exec nginx_prox_backend_1 nginx -s reload

docker exec -it nginx_prox_backend_1 bash

docker exec -it nginx_prox_frontend_1 bash

docker exec -it nginx_prox_arm_1 bash


openssl req -x509 -out docker.loc.crt -keyout docker.loc.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=docker.loc' -extensions EXT -config <( \
   printf "[dn]\nCN=docker.loc\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:docker.loc\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

```


