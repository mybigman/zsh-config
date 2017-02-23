# zsh-config
My zsh config with oh-my-zsh.


# Requirements
- git
- pip


# Features
- oh-my-zsh with useful plugins
- awesome history search and grep (need to pip install [percol](https://github.com/mooz/percol)).
  [blog post](http://blog.popstas.ru/blog/2015/12/10/interactive-bash-history-with-search/)
- [powerline](https://github.com/powerline/powerline) prompt
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## oh-my-zsh plugin features
#### debian
- `ai` - (sudo) aptitude install
#### fancy-ctrl-z
- `Ctrl+Z` in Vim to execute command and `Ctrl+Z` again to back into Vim


# Install

## Ansible Installer
Use ansible role [ansible-role-zsh](https://github.com/viasite-ansible/ansible-role-zsh)

## Shell Installer
Shell installer not supported, from 2017.
It removes your `~/.zshrc` to `~/.zshrc.bak` and changes your default shell to `zsh`!
Installs into /etc/zsh-config and /usr/share/oh-my-zsh, need sudo privileges.

```
bash -c "$(curl -fsSL https://raw.github.com/popstas/zsh-config/master/install.sh)"
```


# Configuration
You should not edit `~/.zshrc`! 
Add your custom config to `~/.zshrc.local` (per user) or `/etc/zshrc.local` (global).
See example [.zshrc.local](.zshrc.local).


# Other users configfiles
- https://github.com/mcornella/dotfiles
