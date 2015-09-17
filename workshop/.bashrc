test -s ~/.alias && . ~/.alias || true
if [ -f /etc/bashrc ] ; then
	. /etc/bashrc
fi

# Add any cumstomization AFTER this line: 


#sample .bashrc
set -o emacs
alais dir='ls -l'
