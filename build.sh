#!/bin/sh
for dockerfile in `find . -name Dockerfile`
do
   # get the base directory
   export dir=$(dirname ${dockerfile})
   echo $dir
   perl -X ./docker-compile.pl $dir
done
