#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'


# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias ipython="python2 -c 'import IPython; IPython.embed()'"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias lh='ls -alFh'
alias l='ls -CF'

# mimetype helpers
alias o='xdg-open'


complete -cf sudo
complete -cf man

##################################################
# Environment variables

export DATAPATH='/home/dmytro/work/data/'
export PATH=${HOME}/bin:${PATH}
export PATH=${HOME}/.gem/ruby/2.2.0/bin:${PATH}
export EDITOR="vim"
#export PYTHONPATH=$PYTTHONPATH:/home/dmytro/work/wavelets/stats
export PYTHONPATH=$PYTHONPATH:/home/dmytro/study/LabRotations/haynes/rdaclient.py/src/
export PYTHONPATH=$PYTHONPATH:/home/dmytro/study/LabRotations/msf/pymsf/
alias tunnel='ssh -N -L 8888:localhost:80 gitlab'
