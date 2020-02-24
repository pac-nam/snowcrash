#!/usr/bin/env bash
RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
RESET="\033[0m"
if [ -z $1 ]; then 
	echo "Need arg (ip kali)"
	exit 1;
fi

scp `pwd`/level02/ressources/level02.pcap root@$1:/root/Desktop/ 1>&-

echo -e "${YELLOW}copy level02.pcap in kali vm Done ${RESET}"
echo -e "\n${BLUE}Open Wireshark to see password in hexa${RESET}"

echo -e "${YELLOW}"
echo "66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d 00 0d 0a 01" | xxd -r -p 
echo -e "${RESET}"

echo "Ok but we have 7f (DEL) caracter, so we remove x char before DEL caracter"

echo -e "${GREEN}"
echo "66 74 5f 77 61 4e 44 52 65 4c 30 4c 0d 00 0d 0a 01" | xxd -r -p 
echo -e "${RESET}"