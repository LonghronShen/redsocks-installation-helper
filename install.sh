#!/bin/bash

set -x

export upstream_ip=$1
export upstream_port=$2
export upstream_mode="${3:-socks5}"

echo "$upstream_ip, $upstream_port, $upstream_mode"

apt update && apt install -y redsocks gettext

envsubst < redsocks.conf.template > /etc/redsocks.conf

mkdir -p /etc/iptables
envsubst < redsocks.rules.template > /etc/iptables/redsocks.rules

service redsocks restart