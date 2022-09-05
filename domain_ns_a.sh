#!/bin/bash
# Bulk DNS Lookup
# Generates a CSV of DNS lookups from a list of domains.
#
# File name/path of domain list:
domain_list='domains.txt' # One FQDN per line in file.
#
# IP address of the nameserver used for lookups:
#ns_ip='1.1.1.1' # Is using Cloudflare's 1.1.1.1.



for domain in `cat $domain_list` # Start looping through domains
do
                #echo -e "Domain \n------- \n$domain"
        ip=`dig $domain a +short`; # IP address lookup
                #echo -e "IP \n --- \n$ip"


        nameserver=`dig $domain ns +short`;
            echo -e "------------------------- \n$domain \n \n$ip \n \n$nameserver"
done;
