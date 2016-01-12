#!/bin/bash

for ((c=$1; c<=$2; c++))
do
   echo $c
   fleetctl  start trooper@$c
done
