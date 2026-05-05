#!/usr/bin/env bash

VERSION="1.0.0"
BUILD_DATE="05 May 2025"
AUTHOR="HexXylo"

PURPLE="\033[1;35m"
LPURPLE="\033[0;35m"
RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"
WHITE="\033[1;37m"
GRAY="\033[0;37m"

function banner() {

  echo -e "
${PURPLE}  ╔══════════════════════════════════════════════════════════════════════╗${RESET}
${PURPLE}  ║${RESET}                                                                      ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${LPURPLE} ██╗  ██╗██╗   ██╗██╗      ██████╗ ${RESET}                              ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${LPURPLE} ╚██╗██╔╝╚██╗ ██╔╝██║     ██╔═══██╗${RESET}                              ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${WHITE}  ╚███╔╝  ╚████╔╝ ██║     ██║   ██║${RESET}                              ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${WHITE}  ██╔██╗   ╚██╔╝  ██║     ██║   ██║${RESET}                              ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${LPURPLE} ██╔╝ ██╗   ██║   ███████╗╚██████╔╝${RESET}                              ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}  ${LPURPLE} ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ${RESET}  ${DIM}Termux Edition${RESET}            ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}                                                                      ${PURPLE}║${RESET}
${PURPLE}  ╠══════════════════════════════════════════════════════════════════════╣${RESET}
${PURPLE}  ║${RESET}                                                                      ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}   ${PURPLE}✦${RESET} ${GRAY}Version   ${RESET}: ${WHITE}${VERSION}${RESET}                                                   ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}   ${PURPLE}✦${RESET} ${GRAY}Build     ${RESET}: ${WHITE}${BUILD_DATE}${RESET}                                            ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}   ${PURPLE}✦${RESET} ${GRAY}Author    ${RESET}: ${WHITE}${AUTHOR}${RESET}                                                ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}   ${PURPLE}✦${RESET} ${GRAY}GitHub    ${RESET}: ${LPURPLE}https://github.com/HexXylo/xyTermux${RESET}                  ${PURPLE}║${RESET}
${PURPLE}  ║${RESET}                                                                      ${PURPLE}║${RESET}
${PURPLE}  ╚══════════════════════════════════════════════════════════════════════╝${RESET}
  "
}
