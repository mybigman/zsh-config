#!/bin/bash
set -euo pipefail

if [ ! -d /usr/share/oh-my-zsh ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git /usr/share/oh-my-zsh
fi

if [ ! -d /etc/zsh-config ]; then
	git clone https://github.com/popstas/zsh-config.git /etc/zsh-config

	if [ -e "$HOME/.zshrc" ]; then
		mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
	fi
	ln -s /etc/zsh-config/.zshrc ~/.zshrc

	if [ -e "$HOME/.oh-my-zsh" ]; then
		mv "$HOME/.oh-my-zsh" "$HOME/.oh-my-zsh.bak"
	fi
	ln -s /etc/zsh-config/.oh-my-zsh ~/.oh-my-zsh
fi

if [ ! -d /usr/share/zsh-syntax-highlighting ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/share/zsh-syntax-highlighting
fi

pip install percol powerline-status
chsh -s /bin/zsh $(whoami)
