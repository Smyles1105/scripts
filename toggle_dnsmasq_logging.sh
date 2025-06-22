#! /usr/bin/bash

if [ "$1" = "off" ]; then

#Comment out dns and dhcp query logging
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-dhcp/#log-dhcp/' "/etc/dnsmasq.d/logging.conf"
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-queries/#log-queries/' "/etc/dnsmasq.d/logging.conf"
	cat "/etc/dnsmasq.d/logging.conf"
	echo "logging disabled"

elif [ "$1" = "on" ]; then


	#Uncomment out dns and dhcp query logging
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-dhcp/log-dhcp/' "/etc/dnsmasq.d/logging.conf"
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-queries/log-queries/' "/etc/dnsmasq.d/logging.conf"
	cat "/etc/dnsmasq.d/logging.conf"
	echo "logging enabled"

fi


