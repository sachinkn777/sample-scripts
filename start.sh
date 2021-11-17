#!/bin/bash
sudo apt install docker.io -y
sudo docker pull nvcr.io/nvidia/clara-train-sdk:v4.0 &
echo "0.0.0.0 flserver" >> /etc/hosts
#Variables and Values
BUCKET_NAME= "datacopy-bucket/provisioning"
key_value= "0zOeNT3shZVjMmIK"
#Pull the server.zip from the GCS Bucket and unzip
gsutil -m cp -r gs://BUCKET_NAME/server.zip .
unzip -oP key_value server.zip 
''' cd startup/
sudo su
chmod 700 docker.sh start.sh && bash docker.sh
docker exec -it flserver /bin/bash
hostname '''
