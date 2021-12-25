curl http://my-nginx_frontend_1
curl http://my-nginx_backend_1

docker logs -n 1 my-nginx_backend_1


docker exec my-nginx_frontend_1 nginx -s reload
ls
docker exec my-nginx_backend_1 nginx -s reload

docker exec -it my-nginx_backend_1 bash

docker exec -it my-nginx_arm_1 bash