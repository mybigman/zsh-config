# zsh-config
My zsh config with oh-my-zsh.
All config moved to .zshrc, .oh-my-zsh not used now.


# Install
It removes your `~/.zshrc` and changes your default shell to `zsh`!
Installs into /etc/zsh-config and /usr/share/oh-my-zsh, need sudo privileges.
```
git clone https://github.com/robbyrussell/oh-my-zsh.git /usr/share/oh-my-zsh
git clone https://github.com/popstas/zsh-config.git /etc/zsh-config
rm ~/.zshrc
ln -s /etc/zsh-config/.zshrc ~/.zshrc
chsh -s /bin/zsh $(whoami)
```

### Install additional plugins:
```
aptitude install python-pip
pip install percol powerline-status thefuck
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
