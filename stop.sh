#!/bin/bash

set -x

iptables -t nat -D OUTPUT 6
iptables -t nat -D OUTPUT 5
iptables -t nat -D OUTPUT 4
iptables -t nat -D OUTPUT 3
iptables -t nat -D OUTPUT 2
iptables -t nat -D OUTPUT 1