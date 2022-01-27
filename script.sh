#!/bin/bash
echo "PWD = $PWD"
echo "My pod IP = $MY_POD_IP"
ROUTEFILE=${RMR_SEED_RT}
sed -i -r "s/172.17.0.6/${MY_POD_IP}/g" ${ROUTEFILE} 
sed -i -r "s/172.17.0.5/${MY_POD_IP}/g" ${ROUTEFILE}
./src/xapp/build/odu/bin/ric_stub/ric_stub
