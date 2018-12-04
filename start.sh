#!/bin/bash

# Prevent redirecting packs to the redsocks server.
iptables -t nat -A OUTPUT -d 127.0.0.1 -j RETURN

# Prevent redirecting to private addresses.
iptables -t nat -A OUTPUT -d 10.0.0.0/8 -j RETURN
iptables -t nat -A OUTPUT -d 172.16.0.0/16 -j RETURN
iptables -t nat -A OUTPUT -d 192.168.0.0/16 -j RETURN

# Important! Prevent redirecting to preserved addresses.
iptables -t nat -A OUTPUT -d 127.0.0.0/8 -j RETURN

# Other packs should be redirected to the redsocks ports.
iptables -t nat -A OUTPUT -p tcp -j REDIRECT --to-ports 12345