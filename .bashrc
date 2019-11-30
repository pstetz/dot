# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# Silence zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

alias pystart='/Users/pbezuhov/anaconda3/bin/jupyter_mac.command'
alias matlab='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop'
alias goattention='ssh pstetz@attention.stanford.edu'
alias goreward='ssh pstetz@reward.stanford.edu'
alias cdme='cd /Volumes/group/pstetz'
alias cddata='cd /Volumes/group/PANLab_Datasets'
alias sourcebashrc='source ~/.bashrc'
alias vimbashrc='vim ~/.bashrc'

## Environment variables
export FLYWHEEL_API=$(cat ~/.passwords/flywheel)

# Warns when overwriting file
set -o noclobber

# custom function
function cd {
    builtin cd "$@" && ls
}
last_mod(){
    find . -maxdepth 1 -mmin $1
}
now(){
    current_time=$(date +%Y_%m_%d_%H_%M_%S)
    echo $current_time
}
pretty-log() { # Nicer format for git log
   git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit $@
}

### Command prompt
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);
PS1="\[${bold}\]\n"
PS1+="\[${orange}\]\u"
PS1+="\[${white}\]@"
PS1+="\[${yellow}\]\h"
PS1+="\[${white}\] --> "
PS1+="\[${green}\]\w"
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";
export PS1;

export TZ=America/Los_Angeles

