# 💻 Windows Terminal & PowerShell Workflow

This directory contains the complete PowerShell configuration and Oh My Posh styling to build a modern, high-productivity CLI workspace.

---

## 🛠️ Prerequisites

To render all visual components properly, ensure you have:
1. **PowerShell 7+** (Recommended) or standard Windows PowerShell.
2. **Oh My Posh**: Installed via `winget install JanDeDobbeleer.OhMyPosh -s winget` (or Scoop).
3. **Nerd Font**: A Nerd Font (e.g., *JetBrainsMono Nerd Font*) set as your Terminal font. Essential for rendering the prompt powerline glyphs and `Terminal-Icons` icons.

---

## 🚀 Installation & Setup

Easily link your shell environment to these dotfiles by sourcing this profile inside your default `$PROFILE`.

### 1. Initialize Your Profile File
First, open your PowerShell profile. If the file does not exist, you can create it automatically:

```powershell
# Create the profile if it doesn't already exist
if (!(Test-Path $PROFILE)) { New-Item -Type File -Path $PROFILE -Force }

# Open the profile in Notepad
notepad $PROFILE
```

### 2. Reference the Dotfiles Profile
Add the following line to your `$PROFILE` file:

```powershell
. "$HOME/dev/dotfiles/windows/Microsoft.PowerShell_profile.ps1"
```

Save and close Notepad. 

### 3. Reload Your Shell
Apply the configuration immediately in your current terminal session:

```powershell
. $PROFILE
```
