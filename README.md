# docker-libreplan

## Run a libreplan container using the default script
 - The script requires you to set the lp_host_port variable:<br/>
    lp_host_port=\<your_port\> ./start-container.sh

 - You can also specify the database and libreplan container names.<br/>
   Use lp_db_name and lp_name variables for that respectively.

## Run a libreplan docker container manually

 - First, fire up a postgres database.<br/>
    docker run -dP --name db postgres

 - Now run the libreplan container.<br/>
   Replace host_port with your port of choice, or use "-P" simply.<br/>
    docker run -d --name mylibreplan --link db:db -p $host_port:8080 aquavitae/libreplan

 - Check the logs to wait for the application to fully start.<br/>
    docker logs -f mylibreplan

 - Now open up your browser: localhost:$host_port
