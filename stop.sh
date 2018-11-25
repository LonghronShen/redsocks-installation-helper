#!/bin/bash

# Delete all rules in  chain
iptables -t filter -F REDSOCKS

# Delete a user-defined chain
iptables -t filter -X REDSOCKS

# Zero counters in chain
iptables -t filter -Z REDSOCKS

# Delete all nat rules in chain
iptables -t nat -F REDSOCKS

# Delete a user-defined chain
iptables -t nat -X REDSOCKS

# Zero counters in chain
iptables -t nat -Z REDSOCKS