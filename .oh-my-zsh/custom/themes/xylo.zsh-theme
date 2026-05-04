# xylo.zsh-theme
# Author: HexXylo
# Style: Kali/ParrotOS bracketed prompt
# Colors: xylo purple palette (#5254B3)
# ─────────────────────────────────────
# Prompt looks like:
#
# ┌─[XYLO✦Termux]─[~]
# └─»»» 
#
# Colors used:
#   Teal/Cyan bracket lines  → \e[38;5;37m   (like the image corner lines)
#   Green [XYLO...]          → \e[38;5;82m
#   Orange ✦ globe icon      → \e[38;5;214m
#   Purple path [~]          → \e[38;5;62m   (xylo primary)
#   Yellow »»»               → \e[38;5;214m
#   Cyan »                   → \e[38;5;37m
# ─────────────────────────────────────

# ANSI escape wrappers for ZSH prompt
_P_RESET="%{$reset_color%}"

# Teal — bracket lines & connectors
_P_TEAL="%{\e[38;5;37m%}"
# Green — [XYLO...Termux] label
_P_GREEN="%{\e[38;5;82m%}"
# Orange — globe icon ✦ separator
_P_ORANGE="%{\e[38;5;214m%}"
# Purple — path [~]
_P_PURPLE="%{\e[38;5;62m%}"
# Bold white — text inside brackets
_P_WHITE="%{$fg_bold[white]%}"

# Git prompt colors
ZSH_THEME_GIT_PROMPT_PREFIX="${_P_TEAL}─[${_P_GREEN}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${_P_TEAL}]${_P_RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{\e[38;5;214m%}*${_P_RESET}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Build the prompt
# Line 1: ┌─[XYLO✦Termux]─[~]─[git branch]
# Line 2: └─»»» 
PROMPT='${_P_TEAL}┌─[${_P_GREEN}XYLO${_P_RESET}${_P_ORANGE}✦${_P_RESET}${_P_GREEN}Termux${_P_TEAL}]─[${_P_PURPLE}%~${_P_TEAL}]$(git_prompt_info)${_P_RESET}
${_P_TEAL}└─${_P_ORANGE}»${_P_TEAL}»»${_P_RESET} '
