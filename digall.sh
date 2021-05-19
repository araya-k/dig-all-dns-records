#!/bin/bash

white="\033[0;37m";
greenBold="\033[1;32m";
yellowIntense="\033[0;93m";
reset="\033[0m";

echo -e "${white}What is the domain name that you wish to dig?${reset}";
echo -e "${greenBold}";
read query;
echo -e "${reset}";

A=$(dig A $query +noall +answer);
AWWW=$(dig A www.$query +noall +answer);
echo -e "${white}A Record of ${reset}${greenBold}$query${reset}${white} and ${reset}${greenBold}www.$query${reset}";
echo -e "${yellowIntense}$A${reset}";
echo -e "${yellowIntense}$AWWW${reset}";
echo -e "\n";

AAAA=$(dig AAAA $query +noall +answer @8.8.4.4);
AAAAWWW=$(dig AAAA www.$query +noall +answer @8.8.4.4);
echo -e "${white}AAAA Record of ${reset}${greenBold}$query${reset}${white} and ${reset}${greenBold}www.$query${reset}";
echo -e "${yellowIntense}$AAAA${reset}";
echo -e "${yellowIntense}$AAAAWWW${reset}";
echo -e "\n";

CNAME=$(dig CNAME $query +noall +answer @8.8.4.4);
CNAMEWWW=$(dig CNAME www.$query +noall +answer @8.8.4.4);
echo -e "${white}CNAME Record of ${reset}${greenBold}$query${reset}${white} and ${reset}${greenBold}www.$query${reset}";
echo -e "${yellowIntense}$CNAME${reset}";
echo -e "${yellowIntense}$CNAMEWWW${reset}";
echo -e "\n";

MX=$(dig MX $query +noall +answer @8.8.4.4);
echo -e "${white}MX Record of ${reset}${greenBold}$query${reset}";
echo -e "${yellowIntense}$MX${reset}";
echo -e "\n";

NS=$(dig NS $query +noall +answer @8.8.4.4);
echo -e "${white}NS Record of ${reset}${greenBold}$query${reset}";
echo -e "${yellowIntense}$NS${reset}";
echo -e "\n";

TXT=$(dig TXT $query +noall +answer @8.8.4.4);
echo -e "${white}TXT Record of ${reset}${greenBold}$query${reset}";
echo -e "${yellowIntense}$TXT${reset}";
echo -e "\n";

CAA=$(dig CAA $query +noall +answer @8.8.4.4);
echo -e "${white}CAA Record of ${reset}${greenBold}$query${reset}";
echo -e "${yellowIntense}$CAA${reset}";