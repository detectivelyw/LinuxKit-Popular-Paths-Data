#!/bin/sh
total_num=30
current_num=1

runc_cmd="runc --root /run/containerd/runc/services.linuxkit/ exec -t"
container_task="ubuntu"
container_obtain_data="ubuntu"
output_data_name="gcda-data-02.tar.gz"
host_ip="10.18.171.176"

cmd_task_1="$runc_cmd $container_task uname -r"
cmd_task_2="$runc_cmd $container_task ls -la"
cmd_task_3="$runc_cmd $container_task df -h"
cmd_task_4="$runc_cmd $container_task which apt-get"
cmd_task_5="$runc_cmd $container_task apt-get update"
cmd_task_6="$runc_cmd $container_task apt-get -y install gcc"
cmd_task_7="$runc_cmd $container_task apt-get -y install openssh-client"
cmd_task_8="$runc_cmd $container_task apt-get -y install vim"
cmd_task_9="$runc_cmd $container_task gcc -v"
cmd_task_10="$runc_cmd $container_task gcc hello-world.c -o hello-world"
cmd_task_11="$runc_cmd $container_task ./hello-world"
cmd_task_12="$runc_cmd $container_task mkdir /home/test/"
cmd_task_13="$runc_cmd $container_task apt-get -y install wget"
cmd_task_14="$runc_cmd $container_task wget -p -k https://www.google.com"
cmd_task_15="$runc_cmd $container_task apt-get -y install python"
cmd_task_16="$runc_cmd $container_task python hello-world.py"
cmd_task_17="$runc_cmd $container_task cp hello-world.c /home/test/"
cmd_task_18="$runc_cmd $container_task cp hello-world.py /home/test/"
cmd_task_19="$runc_cmd $container_task cat /home/test/hello-world.c /home/test/hello-world.py > /home/test/hello-world.txt"
cmd_task_20="$runc_cmd $container_task find -name "hello-world.c""
cmd_task_21="$runc_cmd $container_task grep -nr "Hello" /home/test/"
cmd_task_22="$runc_cmd $container_task mkdir /home/output/"
cmd_task_23="$runc_cmd $container_task tar -zcvf /home/test.tar.gz /home/test/"
cmd_task_24="$runc_cmd $container_task tar -zxvf /home/test.tar.gz -C /home/output/"
cmd_task_25="$runc_cmd $container_task stat /home/test/"

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
echo "CMD_TASK_10: $cmd_task_10"
eval $cmd_task_10
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_11: $cmd_task_11"
eval $cmd_task_11
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_12: $cmd_task_12"
eval $cmd_task_12
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_13: $cmd_task_13"
eval $cmd_task_13
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_14: $cmd_task_14"
eval $cmd_task_14
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_15: $cmd_task_15"
eval $cmd_task_15
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_16: $cmd_task_16"
eval $cmd_task_16
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_17: $cmd_task_17"
eval $cmd_task_17
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_18: $cmd_task_18"
eval $cmd_task_18
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_19: $cmd_task_19"
eval $cmd_task_19
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_20: $cmd_task_20"
eval $cmd_task_20
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_21: $cmd_task_21"
eval $cmd_task_21
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_22: $cmd_task_22"
eval $cmd_task_22
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_23: $cmd_task_23"
eval $cmd_task_23
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_24: $cmd_task_24"
eval $cmd_task_24
echo "task [$current_num/$total_num] completed."
current_num=$((current_num+1))

echo "start running task [$current_num/$total_num] ..."
echo "CMD_TASK_25: $cmd_task_25"
eval $cmd_task_25
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

