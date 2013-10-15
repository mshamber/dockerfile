Some basic dockerfile examples
==============================

Use with Docker http://www.docker.io

To build an image with docker is pretty simple:

    cd rethinkdb
    sudo docker build -t="rethinkdb" .

Then to run that image and attach to it at the same time:

    sudo docker run -i -t rethinkdb
    
Or to run it in the background
  
    sudo docker run -d rethinkdb

Now, in order to build flat images that do not have multiple layers,
use the perl script docker-compile.pl.  
  
    sudo docker-compile.pl <directory of docker file>
    For example:
       sudo perl docker-compile.pl rethinkdb

To build every docker file in this repository at once, run the script
You can edit this script to set your own organization

    sudo ./build.sh
