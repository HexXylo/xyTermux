# xylo zsh theme
# Brand: XYLO Termux
# Prompt style:
#   ┌─[XYLO✦Termux]─[~]
#   └─»»»

# Colors
_XYLO_PUR="%F{135}"    # bright purple
_XYLO_LPUR="%F{141}"   # light purple
_XYLO_WHITE="%F{255}"
_XYLO_GRAY="%F{245}"
_XYLO_RED="%F{196}"
_XYLO_GREEN="%F{82}"
_XYLO_YELLOW="%F{220}"
_XYLO_RESET="%f"

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX=" ${_XYLO_GRAY}git:(${_XYLO_LPUR}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${_XYLO_GRAY})${_XYLO_RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY="${_XYLO_YELLOW}✦"
ZSH_THEME_GIT_PROMPT_CLEAN="${_XYLO_GREEN}✔"

# Build the prompt
_xylo_top() {
  local path_str="%~"
  echo -n "${_XYLO_PUR}┌─[${_XYLO_WHITE}XYLO${_XYLO_PUR}✦${_XYLO_LPUR}Termux${_XYLO_PUR}]─[${_XYLO_WHITE}${path_str}${_XYLO_PUR}]${_XYLO_RESET}$(git_prompt_info)"
}

_xylo_bottom() {
  echo -n "${_XYLO_PUR}└─${_XYLO_LPUR}»»» ${_XYLO_RESET}"
}

PROMPT='
$(_xylo_top)
$(_xylo_bottom)'

RPROMPT='%(0?..${_XYLO_RED}✘ %?${_XYLO_RESET}) %(1j.${_XYLO_YELLOW}⚙ %j${_XYLO_RESET}.)'

zle_highlight=(default:bold)
