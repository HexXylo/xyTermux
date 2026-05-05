#!/usr/bin/env bash

# ╔═══════════════════════════════════════════╗
# ║          xylo — Termux Installer          ║
# ║       github.com/HexXylo/xyTermux         ║
# ╚═══════════════════════════════════════════╝

HELPERS=(
  colors animation banner package switchcase
  dotfiles clone themes nvchad utility
  stat signal screen cursor finish
)

PURPLE="\033[1;35m"
LPURPLE="\033[0;35m"
RESET="\033[0m"
GRAY="\033[0;37m"
WHITE="\033[1;37m"
GREEN="\033[1;32m"
RED="\033[1;31m"

# ── Load all helper modules ──────────────────
for HELPER in "${HELPERS[@]}"; do
  source "$(pwd)/helper/${HELPER}.sh"
done

# ── Interrupt handler ────────────────────────
function handleInterruptByUser() {
  echo -e "\n\n  ${PURPLE}╔═══════════════════════════════════╗${RESET}"
  echo -e "  ${PURPLE}║${RESET}  ${RED}✘  Installation interrupted!${RESET}    ${PURPLE}║${RESET}"
  echo -e "  ${PURPLE}╚═══════════════════════════════════╝${RESET}\n"
  exit 1
}

function main() {

  trap 'handleInterruptByUser "Interrupt by User"' 2

  clear
  banner

  # ── Step 1: Packages ────────────────────────
  echo -e "\n  ${PURPLE}┌──────────────────────────────────────┐${RESET}"
  echo -e "  ${PURPLE}│${RESET}  ${WHITE}Step 1 of 4${RESET}  ${GRAY}─  Package Installation${RESET}  ${PURPLE}│${RESET}"
  echo -e "  ${PURPLE}└──────────────────────────────────────┘${RESET}\n"

  packages
  switchCase "Install" "Packages" installPackages

  # ── Step 2: Dotfiles ────────────────────────
  echo -e "\n  ${PURPLE}┌──────────────────────────────────────┐${RESET}"
  echo -e "  ${PURPLE}│${RESET}  ${WHITE}Step 2 of 4${RESET}  ${GRAY}─  Dotfiles Setup${RESET}        ${PURPLE}│${RESET}"
  echo -e "  ${PURPLE}└──────────────────────────────────────┘${RESET}\n"

  dotFiles
  backupDotFiles
  switchCase "Install" "Dotfiles" installDotFiles

  # ── Step 3: Repositories ────────────────────
  echo -e "\n  ${PURPLE}┌──────────────────────────────────────┐${RESET}"
  echo -e "  ${PURPLE}│${RESET}  ${WHITE}Step 3 of 4${RESET}  ${GRAY}─  Clone Repositories${RESET}    ${PURPLE}│${RESET}"
  echo -e "  ${PURPLE}└──────────────────────────────────────┘${RESET}\n"

  repositories
  switchCase "Clone" "Repositories" cloneRepository

  # ── Step 4: ZSH & NvChad ────────────────────
  echo -e "\n  ${PURPLE}┌──────────────────────────────────────┐${RESET}"
  echo -e "  ${PURPLE}│${RESET}  ${WHITE}Step 4 of 4${RESET}  ${GRAY}─  ZSH Themes & NvChad${RESET}   ${PURPLE}│${RESET}"
  echo -e "  ${PURPLE}└──────────────────────────────────────┘${RESET}\n"

  zshTheme
  switchCase "Install" "ZSH Themes" installZshTheme

  NvChad
  utility

  mainAlert

}

screenSize main
