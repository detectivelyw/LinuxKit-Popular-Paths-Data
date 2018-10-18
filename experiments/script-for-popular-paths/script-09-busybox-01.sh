#!/bin/sh
count=16
current=1

echo "start running task [$current/$count] ..."
uname -r
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
ls -la
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
df -h
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
dpkg -l
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
mkdir /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
cp /hello-world.c /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
mv /home/test/hello-world.c /home/test/hello-world-02.c
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
cp /hello-world.c /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
chmod -R 777 /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
cat /home/test/hello-world.c /home/test/hello-world-02.c > /home/test/hello-world.txt
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
find -name "hello-world.c"
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
which cat
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
tar -zcvf /home/test.tar.gz /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
tar -zxvf /home/test.tar.gz
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
rm /home/test.tar.gz
echo "task [$current/$count] completed."
current=$((current+1))

echo "start running task [$current/$count] ..."
rm -rf /home/test/
echo "task [$current/$count] completed."
current=$((current+1))

