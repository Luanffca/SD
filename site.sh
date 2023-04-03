#!/bin/bash
site="https://opensiteexplorer.org/dotbot"

ips=$(grep "$site" apache.log | awk '{print $1}' | sort | uniq)

for ip in $ips; do
	dominio=$(host $ip | awk '{print $NF}')
	acessos=$(grep -c "$ip" apache.log)
	echo "$ip => $dominio ($acessos acessos)"
done
