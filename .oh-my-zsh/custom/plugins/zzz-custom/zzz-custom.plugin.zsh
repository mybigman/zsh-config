# Authors:
# https://github.com/AlexBio
# https://github.com/dbb
# https://github.com/Mappleconfusers
#
# Debian-related zsh aliases and functions for zsh

# Use aptitude if installed, or apt-get if not.
# You can just set apt_pref='apt-get' to override it.

# home & end keys work
bindkey '\e[1~' beginning-of-line 
bindkey '\e[4~' end-of-line 

# jenkins
alias jenkins='java -jar /usr/local/bin/jenkins-cli.jar -s http://localhost:8080'

# time in right of promt
RPROMPT=' [%*]'

# default editor
export EDITOR="mcedit"

. /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
