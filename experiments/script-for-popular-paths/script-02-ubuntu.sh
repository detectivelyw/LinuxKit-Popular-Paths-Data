#!/bin/bash
count=28
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
yes Y | apt-get install gcc
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install openssh-client
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install vim
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
gcc -v
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
gcc hello-world.c -o hello-world
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
./hello-world
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
ls -la
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
stat /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install wget
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
wget -p -k https://www.google.com
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
yes Y | apt-get install python
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
python hello-world.py
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
mkdir /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
cp hello-world.c /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
cp hello-world.py /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
find -name "hello-world.c"
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
grep -nr "Hello" /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
mkdir /home/output/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
tar -zcvf /home/test.tar.gz /home/test/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
tar -zxvf /home/test.tar.gz -C /home/output/
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
tar -zcvf gcda-data-02.tar.gz linux/
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
which scp
echo "task [$current/$count] completed."
current=$[$current+1]

echo "start running task [$current/$count] ..."
scp gcda-data-02.tar.gz detectivelyw@10.18.171.176:~/Downloads/
echo "task [$current/$count] completed."
current=$[$current+1]
