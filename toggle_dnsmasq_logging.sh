#! /usr/bin/bash

if [ "$1" = "off" ]; then

#Comment out dns and dhcp query logging
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-dhcp/#log-dhcp/' "/etc/customdnsmasq.d/logging.conf"
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-queries/#log-queries/' "/etc/customdnsmasq.d/logging.conf"
	cat "/etc/customdnsmasq.d/logging.conf"
	echo "logging disabled"

elif [ "$1" = "on" ]; then


	#Uncomment out dns and dhcp query logging
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-dhcp/log-dhcp/' "/etc/customdnsmasq.d/logging.conf"
	sed -i 's/^[[:space:]]*#*[[:space:]]*log-queries/log-queries/' "/etc/customdnsmasq.d/logging.conf"
	cat "/etc/customdnsmasq.d/logging.conf"
	echo "logging enabled"

fi


