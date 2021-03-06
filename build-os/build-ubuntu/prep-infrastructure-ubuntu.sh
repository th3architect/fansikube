#!/bin/bash
nova boot --flavor $os_build_ubuntu_flavor --image $os_build_ubuntu_image --key-name $os_build_ubuntu_keypair \
--security-groups $os_ubuntu_sgroups --nic net-id=$os_build_ubuntu_nic0 --nic net-id=$os_build_ubuntu_nic1 \
$server_name_ubuntu-master

nova boot --flavor $os_build_ubuntu_flavor --image $os_build_ubuntu_image --key-name $os_build_ubuntu_keypair \
--security-groups $os_ubuntu_sgroups --nic net-id=$os_build_ubuntu_nic0 --nic net-id=$os_build_ubuntu_nic1 \
$server_name_ubuntu-node01

nova boot --flavor $os_build_ubuntu_flavor --image $os_build_ubuntu_image --key-name $os_build_ubuntu_keypair \
--security-groups $os_ubuntu_sgroups --nic net-id=$os_build_ubuntu_nic0 --nic net-id=$os_build_ubuntu_nic1 \
$server_name_ubuntu-node02

nova boot --flavor $os_build_ubuntu_flavor --image $os_build_ubuntu_image --key-name $os_build_ubuntu_keypair \
--security-groups $os_ubuntu_sgroups --nic net-id=$os_build_ubuntu_nic0 --nic net-id=$os_build_ubuntu_nic1 \
$server_name_ubuntu-node03

nova boot --flavor $os_build_ubuntu_flavor --image $os_build_ubuntu_image --key-name $os_build_ubuntu_keypair \
--security-groups $os_ubuntu_sgroups --nic net-id=$os_build_ubuntu_nic0 --nic net-id=$os_build_ubuntu_nic1 \
$server_name_ubuntu-vrouter
