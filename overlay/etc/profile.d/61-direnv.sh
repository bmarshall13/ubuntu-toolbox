
_direnv_prompt_color() {
  if [[ "$DIRENV_DIR" == "" ]]; then
    return
  fi

  local pre=''
  if [[ "$PROMPT_COLOR_BG" != "" ]]; then
    pre="${pre}\033[48;5;${PROMPT_COLOR_BG}m"
  fi
  if [[ "$PROMPT_COLOR" != "" ]]; then
    pre="${pre}\033[38;5;${PROMPT_COLOR}m"
  fi
  printf "${pre}"
}

_direnv_prompt() {
  if [[ "$DIRENV_DIR" == "" ]]; then
    return
  fi

  if [[ "$PROMPT_NAME" == "" ]]; then
    PROMPT_NAME="$(basename ${DIRENV_DIR#-})"
  fi
  printf "${pre}(%s)${post}" "${PROMPT_NAME}"
}

# Add direnv support
if hash direnv 2>/dev/null; then
    eval "$(direnv hook bash)"
    export PS1='\[$(_direnv_prompt_color)\]$(_direnv_prompt)\[\033[00m\]'"$PS1"
fi

# vim: syntax=sh
