#!/bin/bash
PREFIX="[Brain]"

# BlockHole? YEP
ipset -N myBlackhole-4 hash:net family inet
ipset -N myBlackhole-6 hash:net family inet6

function yep_ipset () {
# Get super bad ASN ips
	BAD_IPV4=$(curl -s https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/ip-db/bad_ip)
	if [ $? -ne 0 ]; then
		echo "$PREFIX Failed download bad IP list! Firewall blocking requests to github? No internet connection?"
		return 1
	fi
# What u do?
	for i in $(echo "$BAD_IPV4"); do
		ipset -A myBlackhole-4 $bad_ipv4 $i
		echo "$PREFIX Added $i to bad_ipv4 ipset."
	done

	return 0
}

function yep_iptables () {
	if ! package_exists "iptables"; then
		echo "$PREFIX I think iptables is required for using this bash script."
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
		echo "$PREFIX We are do it! Your iptables configuration loaded, have a nice day :)"
	else
		echo "$PREFIX Failed to configure IPTABLES."
	fi
else
	echo "$PREFIX Failed to generate ipsets, script crashed."
fi

# IPTABLES? YEP

iptables -A INPUT -m set --match-set myBlackhole-4 src -j DROP
ip6tables -A INPUT -m set --match-set myBlackhole-6 src -j DROP
echo "$PREFIX | Operation finished, with reserve mode"
