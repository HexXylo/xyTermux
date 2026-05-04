#!/usr/bin/env bash

BACKUP_DOTFILES=(
  .autostart .aliases
  .config .colorscheme
  .fonts .local .scripts
  .termux .tmux.conf
  .zshrc .oh-my-zsh
)

DOTFILES=(
  .autostart .aliases
  .config .colorscheme
  .fonts .local .scripts
  .termux .tmux.conf
  .zshrc
)


function dotFiles() {

  setCursor off

  echo -e "\n‏‏‎‏‏‎ ‎ ‎‏‏‎  ‎📦 Getting Information Dotfiles"
  sleep 2s

  echo -e "
    ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    ┃             Information Dotfiles              ┃
    ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
    ┃        Folder Name            Folder Size     ┃
    ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

  for DOTFILE in "${DOTFILES[@]}"; do

    FOLDER_SIZE=$(du -s -h $DOTFILE 2>/dev/null | awk '{print $1}')
    printf  "    ┃        ${COLOR_SUCCESS}%-12s${COLOR_BASED}              ${COLOR_WARNING}%5s${COLOR_BASED}        ┃\n" $DOTFILE $FOLDER_SIZE
    echo -e "    ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

  done

  echo ""

}

function backupDotFiles() {

  echo -e "‏‏‎‏‏‎ ‎ ‎‏‏‎  ‎📦 Backup Dotfiles"
  echo -e ""
  sleep 2s

  for BACKUP_DOTFILE in "${BACKUP_DOTFILES[@]}"; do

    start_animation "       Backup ${COLOR_WARNING}'${COLOR_SUCCESS}${BACKUP_DOTFILE}${COLOR_WARNING}'${COLOR_BASED} ..."
    sleep 1s

    # If file/folder exists, back it up; if not, skip (still SUCCESS)
    if [[ -d "$HOME/$BACKUP_DOTFILE" || -f "$HOME/$BACKUP_DOTFILE" ]]; then

      # Capture timestamp ONCE so both mv and check use same value
      TIMESTAMP=$(date +%Y.%m.%d-%H.%M.%S)
      BACKUP_PATH="${HOME}/${BACKUP_DOTFILE}.${TIMESTAMP}.backup"

      mv "${HOME}/${BACKUP_DOTFILE}" "${BACKUP_PATH}"

      if [[ -d "${BACKUP_PATH}" || -f "${BACKUP_PATH}" ]]; then
        stop_animation 0 || exit 1
      else
        stop_animation 1
      fi

    else

      # Doesn't exist — nothing to backup, treat as SUCCESS
      stop_animation 0

    fi

  done

  echo -e ""

}

function installDotFiles() {

  setCursor off

  echo -e "\n‏‏‎‏‏‎ ‎ ‎‏‏‎  ‎📦 Installing Dotfiles\n"

  for DOTFILE in "${DOTFILES[@]}"; do

    if [ "${DOTFILE}" == ".termux" ]; then

      start_animation "       Installing ${COLOR_WARNING}'${COLOR_SUCCESS}${DOTFILE}${COLOR_WARNING}'${COLOR_BASED} ..."
      cp -R $DOTFILE $HOME

      if [[ -d $HOME/$DOTFILE || -f $HOME/$DOTFILE ]]; then

        termux-reload-settings
        stop_animation $? || exit 1

      else

        stop_animation $?

      fi

    else

      start_animation "       Installing ${COLOR_WARNING}'${COLOR_SUCCESS}${DOTFILE}${COLOR_WARNING}'${COLOR_BASED} ..."
      cp -R $DOTFILE $HOME

      if [[ -d $HOME/$DOTFILE || -f $HOME/$DOTFILE ]]; then

        stop_animation $? || exit 1

      else

        stop_animation $?

      fi

    fi

  done

  echo -e ""

  setCursor on
  
}
