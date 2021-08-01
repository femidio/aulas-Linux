#!/bin/bash

echo -e "Iniciando Backup do /home\n"

tar czf /backup/home$(date +%Y%m%d%H%M).tar.gz /home > /dev/null 2>&1

if [ $? = 0 ]; then
   clear
   echo "Backup realizado com sucesso em $(date +%Y%m%d%H%M)" >> /var/log/backup.log
   cat /var/log/backup.log
   exit 0
else
   echo "Erro! - Backup não realizado"
   exit 1
fi
