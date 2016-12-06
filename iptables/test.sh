#! /bin/bash
file="/home/username/banned"
rule="/home/username/rules.v4"
cat /var/log/auth.log | grep -i "Did not\|failed" | grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | sort | uniq  >> $file
sort $file -u -o $file
service iptables-persistent flush
for line in `cat $file`; do iptables -I INPUT -s $line -j DROP; done
iptables-save > $rule
