#!/bin/bash
number=2

function deploy {
  for ((c=$1; c<=$2; c++))
  do
     echo $c
     fleetctl --tunnel=172.17.8.101  start ship@$c
  done
}

deploy 1 10 &
deploy 11 20 &
deploy 21 30 &
deploy 31 40 &
