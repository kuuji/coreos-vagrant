#!/bin/bash

for ((c=$1; c<=$2; c++))
do
   echo $c
   fleetctl --tunnel=172.17.8.101  stop trooper@$c
   fleetctl --tunnel=172.17.8.101  destroy trooper@$c
done
