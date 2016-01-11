#!/bin/bash
for i in {1..15}
do
   echo $i
   fleetctl --tunnel=172.17.8.101  stop ship@$i
   fleetctl --tunnel=172.17.8.101  destroy ship@$i
done
