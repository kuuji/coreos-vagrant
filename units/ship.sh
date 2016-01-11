#!/bin/bash
for i in {1..30}
do
   echo $i
   fleetctl --tunnel=172.17.8.101  start ship@$i
done
