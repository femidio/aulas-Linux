#!/bin/bash

for IP in $(seq 1 5); do
   ping -c 2 192.168.100.$IP > /dev/null && echo "Maquina $IP is UP" || echo "Maquina $IP is DOWN"
done
