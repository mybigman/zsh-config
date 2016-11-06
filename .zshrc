export ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"
HIST_STAMPS="yyyy-mm-dd"

export UPDATE_ZSH_DAYS=30

# For Solarized
export TERM="xterm-256color"

# home & end keys work
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# time in right of prompt
RPROMPT=' [%*]'

# default editor
export EDITOR="mcedit"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(command-not-found debian docker docker-compose fancy-ctrl-z git-extras gnu-utils history jump percol pip python tmux vagrant zsh_reload)
# custom plugins: drall drs
# plugin common-aliases breaks execution of php scripts with shebang, why?

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

# percol awesome history search
# g conflicts with zsh plugin 'git'
function exists { which $1 &> /dev/null }
if exists percol; then
	function percol_select_history() {
		local tac
		exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
		BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
		CURSOR=$#BUFFER         # move cursor
		zle -R -c               # refresh
	}

	zle -N percol_select_history
	bindkey '^R' percol_select_history

	# percol based grep
	g() { percol --match-method regex --query="$*"; }
fi

if exists powerline; then
	source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

[[ -r /etc/zsh/zshrc.local ]] && source /etc/zsh/zshrc.local
[[ -r "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
