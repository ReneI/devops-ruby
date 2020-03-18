#!/bin/bash
b8137ef4a49dadfe0cfeb170f838f6d6742177af
sysctl -w vm.max_map_count=262144
sysctl -w fs.file-max=65536

cd dock
# Start memory 

# docker-compose up
docker-compose -d up
