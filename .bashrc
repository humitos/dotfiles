# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

. ~/.shell/aliases
. ~/.shell/variables
. ~/.shell/functions
. ~/.shell/vanilla

# https://github.com/junegunn/fzf
# pacman -S fzf
. /usr/share/fzf/completion.bash
. /usr/share/fzf/key-bindings.bash

# bash completion
for f in $HOME/.shell/completion.d/*; do
   . $f
done

~/bin/es_keyboard
~/bin/en_keyboard
