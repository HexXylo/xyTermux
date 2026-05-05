<div align="center">

```
 ██╗  ██╗██╗   ██╗██╗      ██████╗ 
 ╚██╗██╔╝╚██╗ ██╔╝██║     ██╔═══██╗
  ╚███╔╝  ╚████╔╝ ██║     ██║   ██║
  ██╔██╗   ╚██╔╝  ██║     ██║   ██║
 ██╔╝ ██╗   ██║   ███████╗╚██████╔╝
 ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ 
          T e r m u x
```

**xylo** — A sleek, purple-themed Termux configuration

[![license](https://img.shields.io/badge/license-GPL--3.0-blueviolet.svg)](LICENSE)
[![version](https://img.shields.io/badge/version-1.0.0-purple.svg)](https://github.com/HexXylo/xyTermux)

</div>

---

## Requirements

- [Termux (F-Droid)](https://f-droid.org/en/packages/com.termux/) — use F-Droid version
- [Termux:API (F-Droid)](https://f-droid.org/en/packages/com.termux.api/) — for battery/device info

## Installation

```bash
# Update packages
pkg update && pkg upgrade

# Install dependencies
pkg i -y git bc

# Clone xyTermux
git clone --depth=1 https://github.com/HexXylo/xyTermux.git

# Enter directory
cd xyTermux

# Export terminal dimensions
export COLUMNS LINES

# Run installer
./install.sh
```

> **Note:** If you see `Please Zoom Out` — zoom out in your Termux app and run again.

## Prompt Style

```
┌─[XYLO✦Termux]─[~]
└─»»» 
```

## Commands

| Command | Description |
|---------|-------------|
| `chcolor` | Switch color scheme |
| `chfont` | Switch font |
| `chzsh` | Switch ZSH theme |
| `rxfetch` | Show system info (xylo style) |

## Features

- **Purple accent** color throughout (replaced cyan)
- **XYLO ASCII** system fetch — no box, clean layout
- **Custom ZSH prompt** — `┌─[XYLO✦Termux]─[~]` / `└─»»»`
- NvChad, Oh-My-Zsh, tmux, lf, ncmpcpp, neofetch

## Credits

- [mayTermux/myTermux](https://github.com/mayTermux/myTermux) — original project
- [owl4ce](https://github.com/owl4ce) — ZSH themes
- [siduck](https://github.com/siduck) — NvChad
- [adi1090x](https://github.com/adi1090x) — Termux setup inspiration
