#!/bin/bash
count=6
current=1

echo "start running task [$current/$count] ..."
cp -r /sys/kernel/debug/gcov/linux/ /home/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
cd /home/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
tar -zcvf gcda-data-09.tar.gz linux/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
apt-get update
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install openssh-client
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
scp gcda-data-09.tar.gz detectivelyw@192.168.0.20:~/Downloads/
echo "task [$current/$count] completed."
current=$[$current+1]
