#!/bin/bash
cd startup/
bash docker.sh
docker ps
docker exec -it flserver /bin/bash
