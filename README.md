# zsh-config
My zsh config with oh-my-zsh.

.zshrc.local used on my home system and should not installed on other systems.

# Requirements
- git
- pip

# Install
It removes your `~/.zshrc` to `~/.zshrc.bak` and changes your default shell to `zsh`!
Installs into /etc/zsh-config and /usr/share/oh-my-zsh, need sudo privileges.

```
sh -c "$(curl -fsSL https://raw.github.com/popstas/zsh-config/master/install.sh)"
```

# Features
- awesome history search and grep (need to pip install [percol](https://github.com/mooz/percol)).
  [blog post](http://blog.popstas.ru/blog/2015/12/10/interactive-bash-history-with-search/)
- add your custom config to `~/.zshrc.local` or `/etc/zshrc.local`, don't modify `~/.zshrc`
- powerline prompt


# Plugin features
#### debian
- `ai` - (sudo) aptitude install
#### fancy-ctrl-z
- `Ctrl+Z` in Vim to execute command and `Ctrl+Z` again to back into Vim
#### thefuck
- `Esc Esc` - fuck


# Other useful zsh addons
These addons not included in my config, but I use it:
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

# Other users configfiles
- https://github.com/mcornella/dotfiles
