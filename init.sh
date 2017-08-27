#!/bin/bash
service ssh start
nginx &
for (( ; ; ))
do
   >&2 echo "$(date) I am still here ... "
   echo "Hi there! I am just writing out a bunch of stuff here to fill up logs."
   
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? "
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? "
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? "
   echo "What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? What do we have here? "

   sleep 10
done
