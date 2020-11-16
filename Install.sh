
#!/bin/bash

printf '\033]2;install.sh\a'

G="\033[1;34m[*] \033[0m"
S="\033[1;32m[+] \033[0m"
E="\033[1;31m[-] \033[0m"

if [[ $(id -u) != 0 ]]; then
    echo -e ""$E"Access Granted!"
    exit
fi

{
    CHECK="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
} &> /dev/null

if [[ "$CHECK" != 0 ]]; then 
    echo -e ""$E"No Internet connection!"
    exit
fi

sleep 0.5
clear
sleep 0.5
cat banner/banner.txt
echo

sleep 1
echo -e ""$G"Installing dependencies..."
sleep 1
