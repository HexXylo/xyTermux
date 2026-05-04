#!/usr/bin/env bash

# Author : HexXylo
# GitHub : https://github.com/HexXylo/xyTermux

RED="\e[91m"
YELLOW="\e[93m"
GREEN="\e[92m"
PURPLE="\e[38;5;62m"
DEFAULT="\e[39m"

user="xytermux"
pass="xytermux"

handle_ctrl_c() {

        pkill com.termux

        echo -e "\n\nERROR    :$RED Oops, you can't exit!$DEFAULT\n"
        echo -e "             Message"
        echo -e "             ━━━━━━━"
        echo -e "$YELLOW   Press Enter to back Login or"
        echo -e "   Enter username / password to\n   continue.$DEFAULT"

}

trap "handle_ctrl_c" 2

clear
while true; do

    echo -e ""
    echo -e "${PURPLE}Welcome to xyTermux!${DEFAULT}\n"
    read -p "Username: " username

    if [[ "$username" == "$user" ]]; then

      unset password

      prompt="Password: "
      while IFS= read -p "$prompt" -r -s -n 1 char
      do
          if [[ $char == $'\0' ]]; then
            break
          fi
          prompt='*'
          password+="$char"
      done

      if [[ $password == $pass ]]; then
        echo -e "\n\nStatus: ${GREEN}Success Login. ${DEFAULT}"
        sleep 2s
        clear
        break
      else
        echo -e "\n\nStatus: ${RED}Wrong Password. ${DEFAULT}"
        sleep 2s
        clear
      fi

    else

        echo -e ""
        echo -e "Status: $YELLOW Wrong Username.$DEFAULT"
        sleep 2s
        clear

    fi

done
