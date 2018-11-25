#!/bin/bash

upstream_ip=$1
upstream_port=$2
upstream_mode="${3:-socks5}"

apt update && apt install -y redsocks gettext

envsubst < redsocks.conf.template > /etc/redsocks.conf