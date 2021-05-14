#!/bin/bash

sucess="\033[0;93m"
domain="\033[1;32m"
msg="\033[0;37m"

echo "${msg}What is the domain name that you wish to dig?${domain}"
read query

A=$(dig $query A +noall +answer)
AWWW=$(dig www.$query A +noall +answer)
echo "\n${msg}A Record of ${domain}$query ${msg}and ${domain}www.$query ${sucess} \n$A \n$AWWW"

AAAA=$(dig $query AAAA +noall +answer)
AAAAWWW=$(dig www.$query AAAA +noall +answer)
echo "\n${msg}AAAA Record of ${domain}$query ${msg}and ${domain}www.$query ${sucess} \n$AAAA \n$AAAAWWW"

CNAME=$(dig $query CNAME +noall +answer) 
CNAMEWWW=$(dig www.$query CNAME +noall +answer) 
echo "\n${msg}CNAME Record of ${domain}$query ${msg}and ${domain}www.$query ${sucess} \n$CNAME \n$CNAMEWWW"

MX=$(dig $query MX +noall +answer)
echo "\n${msg}MX Record of ${domain}$query ${sucess} \n$MX"

NS=$(dig $query NS +noall +answer)
echo "\n${msg}NS Record of ${domain}$query ${sucess} \n$NS"

TXT=$(dig $query TXT +noall +answer)
echo "\n${msg}TXT Record of ${domain}$query ${sucess} \n$TXT"

CAA=$(dig $query CAA +noall +answer)
echo "\n${msg}CAA Record of ${domain}$query ${sucess} \n$CAA"