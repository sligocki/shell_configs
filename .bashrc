export PS1="\n[\e[1;31m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;33m\]\t\[\e[m\] \[\e[0;34m\]\w\[\e[m\]]\n$ "

export EDITOR=nano

export PATH=$HOME/shell_configs/bin:$HOME/.local/bin:$PATH

promptFunc()
{
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/.full_history
}
PROMPT_COMMAND=promptFunc
alias hist="cat ~/.full_history"

# Fixer util for SSH woes.
alias fix-ssh="source ~/shell_configs/fix-ssh"

# Custom aliases
alias l=ls
alias ll="ls -l"
alias grep="grep --color=auto"

# Slurm formatting
alias squeue="squeue --format='%18i %10P %20j %8T %.6M %.6D %.4C %R' --user=$USER"
alias sinfo="sinfo --format='%9P %.5a %.10l %.5D %.4c  %7t %N'"
export SACCT_FORMAT="jobid%-25,jobname%-20,ncpus%3,nnodes%3,elapsed,state,exitcode,start"
