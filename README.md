# zsh-config
My zsh config with oh-my-zsh.
All config moved to .zshrc, .oh-my-zsh not used now.

# Install
```
git clone https://github.com/robbyrussell/oh-my-zsh.git /usr/share/oh-my-zsh
git clone https://github.com/popstas/zsh-config.git /etc/zsh-config
rm ~/.zshrc
ln -s /etc/zsh-config/.zshrc ~/.zshrc
chsh -s /bin/zsh $(whoami)
```
