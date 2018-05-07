#!/bin/bash

echo "---------------------------------- "
echo " Start debian on bash "
echo " ----------------------------------"

docker container run -ti debian apt-get bash
