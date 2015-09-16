#!/bin/bash

if [ -z "$lp_host_port" ]; then
    echo "Set lp_host_port first:" >&2
    echo "  lp_host_port=<your_port> $0" >&2
    exit 1
fi


if [ -z "$lp_db_name" ]; then
    echo "Using default name 'db'"
    db_name="db"
else
    db_name="$lp_db_name"
fi

if [ -z "$lp_name" ]; then
    echo "Using default name 'mylibreplan'"
    lp_name="mylibreplan"
else
    lp_name="$lp_name"
fi

docker run -dP --name "$db_name" postgres
docker run -d --name "$lp_name" --link $db_name:db -p $lp_host_port:8080 aquavitae/libreplan

echo "Wait for application to start. See the docker logs."
