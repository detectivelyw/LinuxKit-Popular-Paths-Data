#!/bin/bash
count=10
current=1

echo "start running task [$current/$count] ..."
uname -r
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
df -h
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
apt-get update
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install wget
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
wget -qO- 127.0.0.1
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
cp -r /sys/kernel/debug/gcov/linux/ /home/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
cd /home/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
tar -zcvf gcda-data-04.tar.gz linux/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install openssh-client
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
scp gcda-data-04.tar.gz detectivelyw@10.18.171.176:~/Downloads/
echo "task [$current/$count] completed."
current=$[$current+1]
