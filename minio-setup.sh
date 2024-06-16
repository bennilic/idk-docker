#!/bin/sh

# Wait for MinIO server to start
sleep 10

# Configure MinIO client (mc)
mc alias set myminio http://minio:9000 admin admin1234

# Create a bucket named 'public-bucket'
mc mb myminio/images

# Set the bucket policy to allow public read
mc anonymous set download myminio/images

# Set the bucket policy to allow public read
mc anonymous set public myminio/images
#mc anonymous set-json /setup/minio-policy.json myminio/images