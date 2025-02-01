#!/bin/bash
sleep 10
# Настроим MinIO Client
mc alias set myminio http://minio:9000 youraccesskey yoursecretkey
# Применим CORS для бакета
mc mb myminio/my-local-bucket
# mc admin policy list myminio/my-local-bucket
# mc anonymous --help
# mc admin policy create my-local-bucket my-policy /etc/mc/policy.json
# mc admin group list myminio/my-local-bucket
# mc admin policy attach myminio/my-local-bucket my-policy --group=anonymous
# mc admin policy attach myminio/my-local-bucket my-policy user=*
# mc anonymous mb my-local-bucket
# mc anonymous set public myminio/my-local-bucket
mc anonymous set-json /etc/mc/policy.json myminio/my-local-bucket

# mc cors set --help

# mc cors set myminio/my-local-bucket /etc/mc/cors.xml
# mc cors set myminio/my-local-bucket /etc/mc/cors.json
# mc admin config set --help
# mc admin config set myminio/ storage_cors=< /etc/mc/cors.json