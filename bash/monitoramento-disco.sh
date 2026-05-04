#!/bin/bash

ponto_montagem="/"
datetime_log=$(date +%F-%H:%M)
diretorio="/home/davi-correia"
uso_disco=$(df -h | grep $ponto_montagem | awk '{print $5}')
echo "Uso de disco em $uso_disco" > "$diretorio/$datetime_log.log"
