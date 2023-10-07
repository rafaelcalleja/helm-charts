#!/bin/bash

action=$1
interface=$2

[[ "$action" = "up" ]] && action_arg="add" || action_arg="del"

ip route ${action_arg} 10.0.0.0/8 via $(ip route show | grep default | awk '{print $3}') dev eth0 metric 100
