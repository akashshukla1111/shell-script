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
export JBOSS_HOME=/Users/akasshukla/jboss-as-7.1.3.Final
export CATALINA_HOME=/Users/akasshukla/Downloads/ride-5.1.4-mac64/apache-tomcat-7.0.47
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$JBOSS_HOME/bin:$PATH

## setting the postgres status cmd
alias pstatus="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log status"

## some utility cmd
alias helix="cp ~/.m2/helixsetting/settings.xml ~/.m2/settings.xml"
alias raptor="cp ~/.m2/raptorsetting/settings.xml ~/.m2/settings.xml"
