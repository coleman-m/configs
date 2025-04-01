# .bashrc
# download with command:  curl -o .bashrc https://raw.githubusercontent.com/coleman-m/configs/refs/heads/main/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias conda="micromamba"
alias mamba="micromamba"
alias la="ls -lah"
