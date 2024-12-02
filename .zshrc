setopt interactivecomments
# https://thevaluable.dev/zsh-install-configure-mouseless/
# https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout
setopt histignorespace  # HIST_IGNORE_SPACE or export HISTORY_IGNORE='^ .*'

# Alias in alphabetical order BY THE RIGHT SIDE of the assignment.
source ~/.aliases

#export PATH = ${PATH}:/Users/rjimeno/Library/Python/3.8/bin
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:$PATH

# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/2.3.3/gems/vagrant-2.3.3/contrib/zsh $fpath)
. /usr/share/zsh/5.8.1/functions/compinit
# <<<<  Vagrant command completion (end)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform


# Load Angular CLI autocompletion.
source <(ng completion script)
