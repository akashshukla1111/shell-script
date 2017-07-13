# git auto-complete
# https://github.com/git/git/tree/master/contrib/completion
  # curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f $HOME/.git-completion.bash ]; then
    . $HOME/.git-completion.bash
    else
    echo " *******  Downloding maven auto-completion bash script from server  *******"
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash
    . $HOME/.git-completion.bash
fi

#  maven auto-complete
#  https://github.com/juven/maven-bash-completion/blob/master/readme.md
   # curl https://raw.github.com/dimaj/maven-bash-completion/master/bash_completion.bash -o ~/.bash_completion.bash
if [ -f $HOME/.maven_bash_completion.bash ]; then
   . $HOME/.maven_bash_completion.bash
   else
   echo " *******  Downloding git auto-completion bash script from server  *******"
   curl https://raw.github.com/dimaj/maven-bash-completion/master/bash_completion.bash -o $HOME/.maven_bash_completion.bash
   . $HOME/.maven_bash_completion.bash
fi

#my color -
export CLICOLOR=1
export LSCOLORS=gxFxCxDxbxegedabagaced
export PS1='\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\$ '

# color for manual bash
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode

##  setting the environment variable for JAVA, MAVEN, TOMCAT
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JRE_HOME=$JAVA_HOME/jre
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"
