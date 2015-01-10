#!/bin/sh

## USAGE: green-zone.sh [ enable | disable | status ]
## Needs to run as root.  Only applies the CS2 "green zone" mark.
## If you need the AF32 mark as well, you need to modify the script below.

if [ $# -gt 0 ]; then
    if [ "$1" = "enable" ]; then
        iptables -t mangle --flush
        iptables -t mangle -A OUTPUT -p icmp -j DSCP --set-dscp 16
        iptables -t mangle -A OUTPUT -p tcp -j DSCP --set-dscp 16
        iptables -t mangle -A OUTPUT -p udp -j DSCP --set-dscp 16

        iptables -t mangle -A OUTPUT -p icmp -j DSCP --set-dscp 28
        iptables -t mangle -A OUTPUT -p tcp -j DSCP --set-dscp 28
        iptables -t mangle -A OUTPUT -p udp -j DSCP --set-dscp 28
        iptables -t mangle -nL
        exit 0
    fi
    if [ "$1" = "disable" ]; then
        iptables -t mangle --flush
        iptables -t mangle -nL
        exit 0
    fi
    if [ "$1" = "status" ]; then
        COUNT=`iptables -t mangle -nL | egrep -c '^DSCP.*(icmp|tcp|udp).*set 0x10 *$'`
        if [ $COUNT -eq 0 ]; then
            echo "Green Zone: disabled"
            exit 0
        fi
        if [ $COUNT -lt 3 ]; then
            echo "Green Zone: partially enabled - PLEASE REVIEW"
            exit 0
        fi
        echo "Green Zone: enabled"
        exit 0
    fi
fi

echo "Usage: $0 [ enable | disable | status ]"
exit 1
