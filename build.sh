#!/bin/sh
ORG=scivm
for dockerfile in `find . -name Dockerfile`
do
   # get the base directory
   export dir=$(dirname ${dockerfile})
   echo $dir
   # docker_compile.pl takes 3 arguments: 
   #   [0] directory where docker file exists
   #   [1] repository name
   #   [2] tag name
   perl -X ./docker-compile.pl $dir $ORG/$dir latest
done
