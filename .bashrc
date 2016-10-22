
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#  command to print hostname in capital letter
n="$(tr [a-z] [A-Z] <<< "$HOSTNAME")"

# User specific aliases and functions
alias st="cd /x/web/$n"

# function to stop, copy and start the c++ component service
cpst(){
 user=${2:-akasshukla};
/x/web/$n/$1/shutdown.sh ;
echo "coping into : /x/web/$n/$1/";
sudo -u qserv scp $user@hyperlvs14.qa.paypal.com:/x/home/$user/mss/code/package/server/$1/$1 /x/web/$n/$1/;
/x/web/$n/$1/start.sh
}

## ending...