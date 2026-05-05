#!/usr/bin/env bash

XYLO_VERSION="1.0.0"

function alertFinish() {

  echo -e "\n\n  ╔═══════════════════════════════════════════════════╗"
  echo -e "  ║                                                   ║"
  echo -e "  ║   \033[1;35m✦  xylo Installation Complete!\033[0m               ║"
  echo -e "  ║                                                   ║"
  echo -e "  ║   \033[0;37mRestart Termux to activate all changes.\033[0m       ║"
  echo -e "  ║   \033[0;37mEnjoy your new XYLO environment.\033[0m              ║"
  echo -e "  ║                                                   ║"
  echo -e "  ╚═══════════════════════════════════════════════════╝\n"

}

function alertNotification() {

  IMAGE_PATH="${HOME}/.config/xylo/alert/images"
  IMAGE_FILE_NAME="finish.png"

  termux-notification --sound -t "xylo v${XYLO_VERSION} has been installed" --image-path ${IMAGE_PATH}/${IMAGE_FILE_NAME}

}

function alertTorch() {

  termux-toast -b "#2D1B4E" -c "#C792EA" -g middle "xylo v${XYLO_VERSION} has been installed"

}


function mainAlert() {

  alertFinish
  alertNotification
  alertTorch

}
