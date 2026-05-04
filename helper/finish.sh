#!/usr/bin/env bash

XYTERMUX_VERSION="1.0.0"

function alertFinish() {

  echo -e "‏‏‎‏‏‎\n    ‎‏‏‎⚠️ Installation Finish, but you need restart Termux to clear setup\n"

}

function alertNotification() {

  IMAGE_PATH="${HOME}/.config/xytermux/alert/images"
  IMAGE_FILE_NAME="finish.png"

  termux-notification --sound -t "xyTermux v${XYTERMUX_VERSION} has been installed" --image-path ${IMAGE_PATH}/${IMAGE_FILE_NAME}

}

function alertTorch() {

  termux-toast -b "#5254B3" -c "#FFFFFF" -g middle "xyTermux v${XYTERMUX_VERSION} has been installed"

}


function mainAlert() {

  alertFinish
  alertNotification
  alertTorch

}
