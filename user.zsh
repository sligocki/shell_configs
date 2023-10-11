# Basic user stuff
export EDITOR=nano
export PATH=$HOME/shell_configs/bin:$HOME/.local/bin:$PATH
# export PS1="\n[\e[1;31m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;33m\]\t\[\e[m\] \[\e[0;34m\]\w\[\e[m\]]\n$ "

# ZSH various
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking
HIST_STAMPS="yyyy-mm-dd"

# ZSH: Improve history
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
export SAVEHIST=1000000000

# Save our own version of history.
#   See: https://www.jefftk.com/p/logging-shell-history-in-zsh
precmd() {
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history -1)" \
    >> ~/.full_history
}
alias hist="cat ~/.full_history"

# Aliases
if [[ $(uname) == "Darwin" ]]; then
  alias ls="ls -HF --color=auto"
else
  alias ls="ls -HF --color=auto --group-directories-first"
fi

alias ll="ls -al"
alias python="python3"
alias pip="python -m pip"
alias R="R --no-save --no-restore-data --no-restore"

# Slurm formatting
alias squeue="squeue --format='%8F %10K %12P %3v %25j %4T %.7M %.4C %.5y %.6Q  %R' --user=$USER"
alias sinfo="sinfo --format='%9P %.5a %.10l %.5D %.4c  %7t %N'"
export SACCT_FORMAT="jobid%-20,jobname%-20,ncpus%3,elapsed,state,exitcode,start,nodelist%5"
alias supdate="scontrol update job"
