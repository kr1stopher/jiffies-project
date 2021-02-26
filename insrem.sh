#!/bin/bash

#clear the message queue, then
#insert hello.ko (or other program file name) into the kernel and remove it again, then
# display the messages as a result of doing so 


sudo -p "osc"
sudo dmesg -c 
clear 

printf "beginning script.../n/n"
sudo insmod seconds.ko

cat /proc/seconds
sleep 1
cat /proc/seconds
sleep 1
cat /proc/seconds

sudo rmmod seconds
sudo dmesg 


printf "/n...end of script /n/n"
