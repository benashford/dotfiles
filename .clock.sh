# -- QUALITY COMMAND-PROMPT COLOURING -- #
BLACK="\[\033[0;30m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
DEFAULT_COLOR="\[\033[00m\]"

if [ "$TERM" != "void" -a "$TERM" != "dumb" ];
then
	PROMPT_COMMAND=prompt_command
fi

function prompt_command 
{
	local timestamp=$(date "+%d-%b-%Y %H:%M:%S" | tr "[:lower:]" "[:upper:]")
	local host=$(hostname | sed -e "s/\..*$//")
	if [[ $TERM = vt100 ]] || [[ $TERM =~ xterm ]];
	then
		wt "$USER@$host:`pwd`" > `tty`
	fi
	local cols=$(tput cols)
	local datewidth=$(echo $timestamp | wc -c)
	local prompt_x=$(echo "$cols $datewidth - 3 - p" | dc)
	#  Move up one; not sure why we need to do this, but without this, I always
	#  got an extra blank line between prompts
	tput cuu1
	tput sc
	tput cup 0 ${prompt_x}
	tput setaf 4 ; tput bold
	echo -n " ["
	tput setaf 1
	echo -n "$timestamp"
	tput setaf 4 ; tput bold
	echo -n "] "
	tput rc
	echo
}

function wt
{
	echo -n "]2;${@}"	
}
