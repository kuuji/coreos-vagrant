#!/bin/bash
usage(){
	echo "Usage: $0 first-id last-id"
	exit 1
}



# call usage() function if filename not supplied
[[ $# -eq 1 ]] && usage

for ((c=$1; c<=$2; c++))
do
   echo $c
   fleetctl --tunnel=172.17.8.101  start trooper@$c
   fleetctl --tunnel=172.17.8.101  start sidekick@$c
done
