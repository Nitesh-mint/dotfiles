# My Dotfiles

This repository contains my personal dotfiles for `zsh`, `tmux`, and `p10k`.

## Installation

The recommended way to use these dotfiles is to clone this repository to a location of your choice and then create symbolic links to the configuration files. This method keeps your `.config` directory clean and makes it easy to manage your dotfiles with version control.

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/dotfiles.git ~/dev/dotfiles
    ```

2.  **Create symbolic links:**

    For example, to link the `zshrc` file, you would run the following command:

    ```bash
    ln -s ~/dev/dotfiles/zshrc ~/.zshrc
    ```

    You can do the same for the other configuration files:

    ```bash
    ln -s ~/dev/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dev/dotfiles/p10k.zsh ~/.p10k.zsh
    ```

    This creates a symbolic link, which you can see with the `ls -l` command:

    ```
    lrwxr-xr-x  1 your-username  staff   35 Nov 24 23:41 .zshrc -> /Users/your-username/dev/dotfiles/zshrc
    ```

## Configuration

### zsh (`.zshrc`)

My `zsh` configuration uses [Oh My Zsh](https://ohmyz.sh/) and a few plugins.

*   **Plugins:**
    *   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    *   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
*   **Theme:**
    *   [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

To use this configuration, you will need to install Oh My Zsh and the plugins. You can find instructions on their respective websites.

### tmux (`.tmux.conf`)

My `tmux` configuration is designed for a simple and efficient workflow. It includes a few key bindings and a custom status bar.

*   **Prefix:** `Ctrl-a`
*   **Plugins:**
    *   [tpm](https://github.com/tmux-plugins/tpm)
    *   [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
    *   [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)

To use this configuration, you will need to install `tpm` and add the plugins to your `.tmux.conf` file.

### Powerlevel10k (`.p10k.zsh`)

My `p10k` configuration is designed to be clean and informative. It shows the current git branch, the status of the repository, and the current Kubernetes context.

To use this configuration, you will need to install the [Nerd Fonts](https://www.nerdfonts.com/) and configure your terminal to use them.

## Contributing

Feel free to open an issue or pull request if you have any suggestions or improvements.