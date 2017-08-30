#!/bin/bash
service ssh start
mkdir -p /var/logs
nginx &
for (( ; ; ))
do
   >&2 echo "$(date) I am still here ... " | tee -a /var/logs/app.log
   echo "Hi there! I am just writing out a bunch of stuff here to fill up logs."
   
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? " | tee -a /var/logs/app.log
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? " | tee -a /var/logs/app.log
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? " | tee -a /var/logs/app.log
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? " | tee -a /var/logs/app.log

   sleep 10
done
