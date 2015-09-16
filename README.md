# docker-libreplan

## Run a libreplan docker container

 - First, fire up a postgres database.<br/>
    docker run -dP --name db postgres

 - Now run the libreplan container.<br/>
   Replace host_port with your port of choice, or use "-P" simply.<br/>
    docker run -d --name mylibreplan --link db:db -p $host_port:8080 aquavitae/libreplan

 - Check the logs to wait for the application to fully start.<br/>
    docker logs -f mylibreplan

 - Now open up your browser: localhost:$host_port
