#!/bin/bash
    sleep 10 &&
    mc alias set myminio http://minio:9000 youraccesskey yoursecretkey &&
    mc admin bucket cors set myminio/my-local-bucket /etc/mc/cors.json &&
    mc admin policy set myminio/my-local-bucket /etc/mc/policy.json &&
    ls