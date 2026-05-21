# Windows workflow configuration
All of my configuration for windows machine will be in this directory! 

## Installation
Point to the config file(profile) in this repo from the default powershell config location.

1. **Open the default config file:**

    ```bash
    notepad $PROFILE
    ```
    If the profile doesn't exist create it.
    ```bash
    New-Item -Path $PROFILE -Type File -Force
    ```
2. **Place the following inside the config(profile) file:**

    ```bash
    . "$HOME/path_to_this_repo_ps1_file"
    ```

