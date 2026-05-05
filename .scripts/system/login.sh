#!/usr/bin/env bash

# xylo — Login Screen

PURPLE="\e[95m"
LPURPLE="\e[35m"
RED="\e[91m"
YELLOW="\e[93m"
GREEN="\e[92m"
DEFAULT="\e[39m"
RESET="\033[0m"
BOLD="\033[1m"

user="xylo"
pass="xylo"

handle_ctrl_c() {

  pkill com.termux

  echo -e "\n\n  ${RED}✘  Oops, you can't exit!${DEFAULT}\n"
  echo -e "  ${PURPLE}─────────────────────────${DEFAULT}"
  echo -e "  ${YELLOW}Press Enter to return to login,${DEFAULT}"
  echo -e "  ${YELLOW}or enter credentials to continue.${DEFAULT}\n"

}

trap "handle_ctrl_c" 2

clear
while true; do

  echo -e ""
  echo -e "  ${PURPLE}╔═══════════════════════════╗${RESET}"
  echo -e "  ${PURPLE}║${RESET}  ${BOLD}Welcome to xylo Termux${RESET}   ${PURPLE}║${RESET}"
  echo -e "  ${PURPLE}╚═══════════════════════════╝${RESET}"
  echo -e ""

  read -p "  Username: " username

  if [[ "$username" == "$user" ]]; then

    unset password

    prompt="  Password: "
    while IFS= read -p "$prompt" -r -s -n 1 char
    do
      if [[ $char == $'\0' ]]; then
        break
      fi
      prompt='*'
      password+="$char"
    done

    if [[ $password == $pass ]]; then
      echo -e "\n\n  ${GREEN}✔  Login successful.${DEFAULT}"
      sleep 1s
      clear
      break
    else
      echo -e "\n\n  ${RED}✘  Wrong password.${DEFAULT}"
      sleep 1s
      clear
    fi

  else

    echo -e ""
    echo -e "  ${YELLOW}✘  Wrong username.${DEFAULT}"
    sleep 1s
    clear

  fi

done
