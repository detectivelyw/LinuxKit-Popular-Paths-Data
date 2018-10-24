#!/bin/sh
total_num=14
current_num=1

runc_cmd="runc --root /run/containerd/runc/services.linuxkit/ exec -t"
container_task="docker"
container_obtain_data="ubuntu"
output_data_name="gcda-data-07.tar.gz"
host_ip="10.18.171.176"

cmd_task_1="$runc_cmd $container_task docker images"
cmd_task_2="$runc_cmd $container_task docker run hello-world"
cmd_task_3="$runc_cmd $container_task docker images"
cmd_task_4="$runc_cmd $container_task docker run ubuntu apt-get update"
cmd_task_5="$runc_cmd $container_task docker run ubuntu apt-get -y install vim"
cmd_task_6="$runc_cmd $container_task docker run ubuntu which vim"
cmd_task_7="$runc_cmd $container_task docker run ubuntu ls -la"
cmd_task_8="$runc_cmd $container_task docker run ubuntu df -h"
cmd_task_9="$runc_cmd $container_task docker images"

cmd_obtain_data_1="$runc_cmd $container_obtain_data cp -r /sys/kernel/debug/gcov/linux/ /home/"
cmd_obtain_data_2="$runc_cmd $container_obtain_data tar -zcvf /home/$output_data_name /home/linux/"
cmd_obtain_data_3="$runc_cmd $container_obtain_data apt-get update"
cmd_obtain_data_4="$runc_cmd $container_obtain_data apt-get -y install openssh-client"
cmd_obtain_data_5="$runc_cmd $container_obtain_data scp /home/$output_data_name detectivelyw@$host_ip:~/Downloads/"

cmd_halt="halt"

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_1: $cmd_task_1"
eval $cmd_task_1
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_2: $cmd_task_2"
eval $cmd_task_2
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_3: $cmd_task_3"
eval $cmd_task_3
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_4: $cmd_task_4"
eval $cmd_task_4
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_5: $cmd_task_5"
eval $cmd_task_5
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_6: $cmd_task_6"
eval $cmd_task_6
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_7: $cmd_task_7"
eval $cmd_task_7
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_8: $cmd_task_8"
eval $cmd_task_8
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_9: $cmd_task_9"
eval $cmd_task_9
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_DATA_1: $cmd_obtain_data_1"
eval $cmd_obtain_data_1
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_DATA_2: $cmd_obtain_data_2"
eval $cmd_obtain_data_2
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_DATA_3: $cmd_obtain_data_3"
eval $cmd_obtain_data_3
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_DATA_4: $cmd_obtain_data_4"
eval $cmd_obtain_data_4
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_DATA_5: $cmd_obtain_data_5"
eval $cmd_obtain_data_5
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "CMD_halt: $cmd_halt"
eval $cmd_halt

