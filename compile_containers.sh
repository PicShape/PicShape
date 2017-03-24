#!/bin/bash

BASE=`pwd`

cd "$BASE/engine"
docker build . -t picshape/picshape-engine

cd "$BASE/front"
docker build . -t picshape/picshape-front
 
cd "$BASE"
docker-compose up
