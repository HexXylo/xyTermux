<h1 align="center">xyTermux</h1>

<p align="center">Make your Termux look stunning — powered by <strong>xylo</strong></p>

<p align="center">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-GPL-blue.svg"></a>
  <img src="https://img.shields.io/badge/brand-xylo-5254B3.svg">
  <img src="https://img.shields.io/github/release/HexXylo/xyTermux.svg">
</p>

---

## ✨ About xyTermux

**xyTermux** is a beta test theme for Termux configuration under the **xylo** — bringing a sleek, purple-toned aesthetic with shell tooling to your Android terminal.

> Forked and rebranded from [xyTermux](https://github.com/HexXylo/xyTermux) by HexXylo.  
> Credits to the original authors are preserved below.

---

## Installation Dependencies

> **Attention!**
>
> - [Termux must be **F-Droid** Version](https://f-droid.org/en/packages/com.termux/) — the Playstore version is no longer maintained
> - [Termux:API must be installed](https://f-droid.org/en/packages/com.termux.api/) — xyTermux uses Termux:API commands like `termux-battery-status`

  <details open>
  <summary><strong>Update Repository & Upgrade Package</strong></summary>

```bash
pkg update && pkg upgrade
```

  </details>

  <details>
  <summary><strong>git & bc</strong></summary>

- Package `git` for cloning or downloading repository
- Package `bc` for calculating repository size

```bash
pkg i -y git bc
```

  </details>

---

## Installation xyTermux

  <details open>
  <summary><strong>Clone or Download This Repository</strong></summary>

```bash
git clone --depth=1 https://github.com/HexXylo/xyTermux.git
```

  </details>

  <details>
  <summary><strong>Run Script Installer</strong></summary>

- Move to Folder

```bash
cd xyTermux
```

- Export variable `COLUMNS` and `LINES`

> This variable allows the installer to read the column and row widths of Termux  
> so the output matches your screen during installation.

```bash
export COLUMNS LINES
```

- Execute Installer

```bash
./install.sh
```

> If you get the error message `Please Zoom Out` — zoom out in Termux then run the script again.

  </details>

---

---

## 🎨 Color Palette

xylo uses a signature **slate purple** palette:

| Role      | Hex       |
|-----------|-----------|
| Primary   | `#5254B3` |
| Accent    | `#7B7FD4` |
| Dark BG   | `#2E2F6E` |
| Toast BG  | `#5254B3` |
| Toast FG  | `#FFFFFF` |

---

## Credits
- [maytermux / maytermux (https://github.com/mayTermux/myTermux) - main source
- [HexXylo / HexXylo](https://github.com/HexXylo) — xyTermux project
- [siduck](https://github.com/siduck) — Neovim Setup (NvChad), Colorscheme (onedark-siduck)
- [owl4ce](https://github.com/owl4ce) — Dotfiles inspiration
- [adi1090x](https://github.com/adi1090x) — Termux Setup
- [bandithijo](https://github.com/bandithijo) — Awesome screenshot script
- [lwotcynna](https://github.com/lwotcynna) — Contributor
- [nekonako](https://github.com/nekonako) — Colorschemes

## Colorscheme

- [catppuccin/termux](https://github.com/catppuccin/termux)

---

<p align="center">Made by <a href="https://github.com/HexXylo">HexXylo</a></p>
