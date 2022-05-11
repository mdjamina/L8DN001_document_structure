#!/bin/bash
#-------------------------------------------------------
# pour lancer ce script:
# bash premierscript.sh <port> <directory>
#
# port: specify alternate port (default: 8000)
#
# directory: specify alternate directory (default: current directory)
#
#-------------------------------------------------------


PORT=$1

if [[ $PORT == "" ]]
then 
PORT="9999"
fi

DIRECTORY=$2

if [[ $DIRECTORY != "" ]]
then 
DIRECTORY="--directory "$DIRECTORY
fi


python3 -m http.server $PORT $DIRECTORY