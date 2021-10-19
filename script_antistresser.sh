#!/bin/bash
# BZ-AntiDDoS
# Please, write: # sync; echo 3 > /proc/sys/vm/drop_caches for faster job.

PREFIX="[GBA]"

# BlockHole for reject connections
ipset -N myBlackhole-4 hash:net family inet
ipset -N myBlackhole-6 hash:net family inet6

# Blyatiful ASCII art by senkodev
printf '
888888b.                        d8888          888    d8b 8888888b.  8888888b.            .d8888b.  
888  "88b                      d88888          888    Y8P 888  "Y88b 888  "Y88b          d88P  Y88b 
888  .88P                     d88P888          888        888    888 888    888          Y88b.      
8888888K.  88888888          d88P 888 88888b.  888888 888 888    888 888    888  .d88b.   "Y888b.   
888  "Y88b    d88P          d88P  888 888 "88b 888    888 888    888 888    888 d88""88b     "Y88b. 
888    888   d88P  888888  d88P   888 888  888 888    888 888    888 888    888 888  888       "888 
888   d88P  d88P          d8888888888 888  888 Y88b.  888 888  .d88P 888  .d88P Y88..88P Y88b  d88P 
8888888P"  88888888      d88P     888 888  888  "Y888 888 8888888P"  8888888P"   "Y88P"   "Y8888P"  
                                                                                                    
                                                                                                    
                                                                                                    '

function yep_ipset () {
# Get super bad ASN ips
	BAD_IPV4=$(curl -s https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/ip-db/bad_ip)
	if [ $? -ne 0 ]; then
		echo "$PREFIX Failed to download bad IPs list! Please, make sure that your firewall is not blocking our requests to GitHub, or if you got internet connection"
		return 1
	fi
# What u do?
	for i in $(echo "$BAD_IPV4"); do
		ipset -A myBlackhole-4 $bad_ipv4 $i
		echo "$PREFIX Successfully added $i to bad_ipv4 ipset."
	done

	return 0
}

function yep_iptables () {
	if ! package_exists "iptables"; then
		echo "$PREFIX IPtables are required to use this bash script."
		return 1
	fi
		if ! iptables -A INPUT -m set --match-set myBlackhole-4 src -j DROP; then
		iptables -A INPUT -m set --match-set myBlackhole-4 src -j DROP
	fi
    	if ! package_exists "ip6tables"; then
		# Optional
		return 0
	fi
	if ! ip6tables -A INPUT -m set --match-set myBlackhole-6 src -j DROP; then
		ip6tables -A INPUT -m set --match-set myBlackhole-6 src -j DROP
	fi
	return 0
    
}

function package_exists () {
	if ! type "$1" > /dev/null; then
		return 1
	else
		return 0
	fi
}

if yep_ipset == 0; then
	if yep_iptables == 0; then
		echo "$PREFIX Task has been accomplished successfully! Your iptables configuration is loaded, have a nice day :)"
		iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP
		iptables -A INPUT -p udp -m u32 --u32 "26&0xFFFFFFFF=0xfeff" -j DROP
		iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
		#iptables -A INPUT -p tcp -m multiport --destination-ports 100:60000 -j DROP
		iptables -A INPUT -p udp --dport 1900 -j DROP # SSDP Fix UDP
		iptables -A INPUT -p icmp -m icmp --icmp-type address-mask-request -j DROP
                iptables -A INPUT -p icmp -m icmp --icmp-type timestamp-request -j DROP
                iptables -A INPUT -p icmp -m icmp --icmp-type 8 -m limit --limit 1/second -j ACCEPT
		iptables-save
	else
		echo "$PREFIX Failed to configure IPTABLES."
	fi
else
	echo "$PREFIX Failed to generate ipsets, script exited."
fi

# iptables for BlackHole

iptables -A INPUT -m set --match-set myBlackhole-4 src -j DROP
ip6tables -A INPUT -m set --match-set myBlackhole-6 src -j DROP
echo "$PREFIX | Task has been accomplished successfully, with reserve mode"
