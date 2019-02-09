
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

alias pystart='/anaconda3/bin/jupyter_mac.command'
alias matlab='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop'
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # alias python='python2'
alias goserver2='ssh pstetz@sni-vcs-williams2.stanford.edu'
alias goattention='ssh pstetz@attention.stanford.edu'
alias goreward='ssh pstetz@reward.stanford.edu'
alias goserver1='ssh pstetz@sni-vcs-williams.stanford.edu'
alias cdme='cd /Volumes/group/ForPatrick'
alias sourcebashrc='source ~/.bashrc'
alias vimbashrc='vim ~/.bashrc'

## Environment variables
export FLYWHEEL_API=$(cat ~/.passwords/flywheel)

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

