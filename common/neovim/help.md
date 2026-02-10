# Neovim Keybindings

This document provides a summary of the custom keybindings configured in your Neovim setup. The leader key is set to `Space`.

## General

| Keybinding | Mode | Description |
|---|---|---|
| `<Space>pv` | Normal | Open file explorer |
| `Tab` | Normal | Go to the next buffer |
| `<Space>y` | Visual | Yank to system clipboard |
| `<Space>/` | Normal | Toggle comments |
| `<Space>/` | Visual | Toggle comments for the selection |

## LSP (Language Server Protocol)

| Keybinding | Mode | Description |
|---|---|---|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Go to references |
| `K` | Normal | Show hover documentation |
| `<Space>ca` | Normal | Code action |
| `<Space>rn` | Normal | Rename |
| `<Space>f` | Normal | Format |
| `<Space>pp` | Normal | Peek definition |
| `<Space>p` | Normal | Show hover documentation |

### Completion

| Keybinding | Mode | Description |
|---|---|---|
| `Tab` | Insert | Select next completion item |
| `Alt+Tab` | Insert | Select previous completion item |
| `Enter` | Insert | Confirm completion |

## Telescope

| Keybinding | Mode | Description |
|---|---|---|
| `<Space>ff` | Normal | Find files |
| `<Space>ps` | Normal | Search for a string in the project |
| `<Space>pf` | Normal | Open location list |
| `<Space>gf` | Normal | Find git files |
| `<Space>f/` | Normal | Live grep |

## Toggleterm

| Keybinding | Mode | Description |
|---|---|---|
| `<C-\>` | Normal | Open a floating terminal |
| `<Space>tv` | Normal | Open a vertical terminal |
| `<Space>th` | Normal | Open a horizontal terminal |
| `<Space>tf` | Normal | Open a floating terminal |
| `<Space>tp` | Normal | Toggle a python terminal |

### Terminal Mode

| Keybinding | Mode | Description |
|---|---|---|
| `Esc` | Terminal | Exit terminal mode |
| `jk` | Terminal | Exit terminal mode |
| `<C-h>` | Terminal | Navigate left |
| `<C-j>` | Terminal | Navigate down |
| `<C-k>` | Terminal | Navigate up |
| `<C-l>` | Terminal | Navigate right |

## GitSigns

| Keybinding | Mode | Description |
|---|---|---|
| `]c` | Normal | Navigate to the next hunk |
| `[c` | Normal | Navigate to the previous hunk |
| `<Space>hs` | Normal | Stage a hunk |
| `<Space>hr` | Normal | Reset a hunk |
| `<Space>hs` | Visual | Stage a hunk for the selection |
| `<Space>hr` | Visual | Reset a hunk for the selection |
| `<Space>hS` | Normal | Stage the entire buffer |
| `<Space>hR` | Normal | Reset the entire buffer |
| `<Space>hp` | Normal | Preview a hunk |
| `<Space>hi` | Normal | Preview a hunk inline |
| `<Space>hb` | Normal | Show the git blame for the current line |
| `<Space>hd` | Normal | Diff the current file against the index |
| `<Space>hD` | Normal | Diff the current file against the last commit |
| `<Space>hQ` | Normal | Send all hunks to the quickfix list |
| `<Space>hq` | Normal | Send the current hunk to the quickfix list |
| `<Space>tb` | Normal | Toggle the current line blame |
| `<Space>tw` | Normal | Toggle word diff |
| `ih` | Operator pending / Visual | Select the current hunk |
