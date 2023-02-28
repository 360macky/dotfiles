<p align="center">
  <img
    src=".github/github.png"
    align="center"
    width="140"
    alt=".dotfiles"
    title=".dotfiles"
  />
  <h1 align="center">/dotfiles - @360macky</h1>
</p>

<p align="center">
  Just my personal .dotfiles
</p>

This repository includes configuration files for a variety of tools, including the terminal emulator, shell, text editor, and window manager. It also includes scripts for installing necessary dependencies and setting up the system.


## 📦 Package Managers

### Vundle (for Neo)
https://www.reddit.com/r/neovim/comments/i65pwd/no_python3_provider_found_run_checkhealth_provider/

### Zplug (for .ZSH)
https://www.woefe.com/posts/bootstrap_zsh.html

### Brew (for Mac)
https://stackoverflow.com/questions/31845710/how-do-i-save-and-version-brew-packages

## Vim Configuration

### Foundations

`.vimrc` and `init.vim` are both configuration files for the Vim text editor, but they have a difference in location and purpose.

- `.vimrc` is the traditional configuration file for Vim, and is usually stored in the user's home directory. It is used to configure Vim's settings, key bindings, plugins, etc. for a specific user on a specific system.
- `init.vim`, on the other hand, is the configuration file for Vim when used with the Neovim text editor. `init.vim` is located in a directory called `config` inside the Neovim configuration directory.

In summary, `.vimrc` is used for Vim configuration and `init.vim` is used for Neovim configuration.

**I use Vim 0.7.0.**

### Theme

* **Nord** theme for dark mode
* **One Half Light** theme for light mode

### Installing plugins
I use Vundle. Everytime you install a plugin in Vim, just add the plugin name inside the Bundle snippet.
After that just open Vim and run
```console
:PluginInstall
```

### Troubleshooting links
https://stackoverflow.com/questions/47667119/ycm-error-the-ycmd-server-shut-down-restart-wit-the-instructions-in-the-docu

## Oh my ZSH Configuration

TODO: To write...
