curl -kGi https://my-nginx_frontend_1
curl -kGI https://my-nginx_backend_1:443
curl -kGI https://test-admin.local.net

docker logs -n 1 my-nginx_backend_1


docker exec my-nginx_frontend_1 nginx -s reload
ls
docker exec my-nginx_backend_1 nginx -s reload

docker exec -it my-nginx_backend_1 bash

docker exec -it my-nginx_frontend_1 bash

docker exec -it my-nginx_arm_1 bash


openssl req -x509 -out docker.loc.crt -keyout docker.loc.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=docker.loc' -extensions EXT -config <( \
   printf "[dn]\nCN=docker.loc\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:docker.loc\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

-rw-r--r--   1 root root 1082 Dec 25 15:26 docker.loc.crt
-rw-------   1 root root 1704 Dec 25 15:26 docker.loc.key

root@109712ee7308:/# cat docker.loc.crt 
-----BEGIN CERTIFICATE-----
MIIC8zCCAdugAwIBAgIUBnwn/5N0Gl49213KrzSY8I6XakMwDQYJKoZIhvcNAQEL
BQAwFTETMBEGA1UEAwwKZG9ja2VyLmxvYzAeFw0yMTEyMjUxNTI2MjFaFw0yMjAx
MjQxNTI2MjFaMBUxEzARBgNVBAMMCmRvY2tlci5sb2MwggEiMA0GCSqGSIb3DQEB
AQUAA4IBDwAwggEKAoIBAQCgMsTGGLS9T5c1BuXOB8cYekfi+25Au+wThZiU98w6
6SCO/h2Pd8CjMr2B/qtx/tPQOVdckUU65EQitJ1qcUKxzFtOe5eC209HhnZVun42
YOn6OSiOeuJ4JQogV44T+CZ7GrfH9YyWodoIcvosa3kCAKNPn0Sy/sF2Am9Oz4L1
EHYXBO3gRBLbZxbEFwozH4qJQwESzA3uSxsZsL+w439UtxDnIP1gyJpopArewy/7
JzeUkNAlkxC3tmYjTgTxb/sT1N9L7XNBOPlYVsIi1WUkZ8HvX5fFSctbVwOZ2sIO
RVpsepkqaxOdOPtrNvJxo4oJ3muL4jBwqH3ozAbp3/arAgMBAAGjOzA5MBUGA1Ud
EQQOMAyCCmRvY2tlci5sb2MwCwYDVR0PBAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUF
BwMBMA0GCSqGSIb3DQEBCwUAA4IBAQCV2JOpg4CXPTH/s5EBAuIlqDDIvD7qkc0i
UPAnsQpJCnaXQS+NFSEqflwZBKDbc4gtMQmbrGRtoIDxaT90xQYDW2bPfQKsbE/P
ubMiMVKpZ/vYJQoJeqQG5zzB8yeE3u/kEPGwxEf28fbJVn5p6PTXksVv/xJqWQUZ
q/IfDe5i0BfVbaf76MaTvLfm5oH7V5+k+rGV84hhMjYWKNLe+luBit2MRmNdegOh
v9coOttEr0LDtcNMPcVPpq6zZaqkJrJcO2McCm2h9i8VZrxSQ4nHMwKDpMuQw5/P
L6QweyXuEoa/7+iNJaAjbNvg6q35E+knbfwbCojzPA1rkgztb5KA
-----END CERTIFICATE-----

root@109712ee7308:/# cat docker.loc.key 
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCgMsTGGLS9T5c1
BuXOB8cYekfi+25Au+wThZiU98w66SCO/h2Pd8CjMr2B/qtx/tPQOVdckUU65EQi
tJ1qcUKxzFtOe5eC209HhnZVun42YOn6OSiOeuJ4JQogV44T+CZ7GrfH9YyWodoI
cvosa3kCAKNPn0Sy/sF2Am9Oz4L1EHYXBO3gRBLbZxbEFwozH4qJQwESzA3uSxsZ
sL+w439UtxDnIP1gyJpopArewy/7JzeUkNAlkxC3tmYjTgTxb/sT1N9L7XNBOPlY
VsIi1WUkZ8HvX5fFSctbVwOZ2sIORVpsepkqaxOdOPtrNvJxo4oJ3muL4jBwqH3o
zAbp3/arAgMBAAECggEAH+HavZ4fImobqscDp1xu6FU1x1vI1oNP+ZamBkfG0pah
DzRNx8bKhPBNPPjlQBu6Jf+zfk2/HHhfgxS1G4ENB/um1FjOj5F8Fr0RAgDKq6Hg
DxefFbQpLEYa3NLwCNNjPS7VEquw3i26CeJwHbUJ8TcVSXxmHMWM1SKo6mNsKb9b
TpjU1YjuRxQJmTecm6m65t4VC3jHDkgWiYNYLqrAY0zyRtaGtsbBcQH8US6E2kfY
2VcLUo9shsyFp5zC7j1kguZ45Kj3XdPK3DHEOXgtQyRNp/Qnp+xVjmuAlRIgTArs
8nqlAxxJ7zMBVOx7B5z2R34fMK3ab2kIDoQM+fn/8QKBgQDP4VIHsPfmeoA+g5mO
us3Bp00EKrcGS43IG2jVFhYthfz2v28l6DA6tIK4TZobu51s+X/78+XgLt6r9dbM
iJSxQY7MZ/pcGKkhawj+gBATKEJWMOt4K/Mu1HqOXTNUSeXwZQV/e6TgfOSne5OA
GaMd4DjZL8+AmX28HS4FWk7k8wKBgQDFR+QEnqDynW0pSdQkAUXSDnniu34BoOlQ
Dpf2f6idgmO18R1jkL9Pb+qnZLAibFBwCpIuE1twmA2OZ+hroxWvSgpVAzL6IjMS
KWP5Y/6ZJcjNnuV/tncu+LfubL8wuPwFc1Fjcn4bgUUvSwwArgJPEOOFoBnFJpH8
5v7Md9t1aQKBgDLnSd74Rrv5Y03ri76Xn6q7/O/4RbkU5zMJAzKqpeOf28HQPrdZ
k/XMHfZjikkgN/xnXB+mKbQrxfr1yBNtnnuJQh5rl7LVlxTH0PwA/+6w/Q1+DSrw
GCxve1NBH0CUl+m10xLUhBs0eglJCWVk4bx/G2yTeIxVCaT2wD4vTwJhAoGBALFz
EcmJ+dFhAyCBVP0x2+CuvrnP1e6XE2W8SrohZ8SN1SyBfeLh/wLv8wywh7He5Zdy
GryxEq27R25RToELB2VNXu/K2d6eRnvOmSto40hT8UPq6hmvQZMRizg9vtePfLlW
Wd3uzTnmVBnPEjPGUTNXSKAYOzXXlLb7/DJkmRUJAoGAKt4bvusaepDqIfGupfRZ
llXJ83MQUVAxAMpEgwrmMURwLWFl1GnNt5AXhuYNPZkRBjn975OFUrgNnv+8fsX4
9upk/PHAoeNKmieK6ZrzFOQbjQDrPO/oJSYH/xGA6HmoZFDaUqjvB6XwHiaSwIwD
qAMUVm1EIT0tNgTsuxQ0cx8=
-----END PRIVATE KEY-----