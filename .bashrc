export PS1="\n[\e[1;31m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;33m\]\t\[\e[m\] \[\e[0;34m\]\w\[\e[m\]]\n$ "

export EDITOR=nano

export PATH=$HOME/shell_configs/bin:$HOME/.local/bin:$PATH

promptFunc()
{
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/.full_history
}
PROMPT_COMMAND=promptFunc
alias hist="cat ~/.full_history"

# Custom aliases
alias ls="ls -G"
alias l=ls
alias ll="ls -l"
alias grep="grep --color=auto"
