#!/bin/bash
# .bashrc
# download with command:  curl -o .profile https://raw.githubusercontent.com/coleman-m/configs/refs/heads/main/.profile

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

# User specific aliases
#######################

alias conda="micromamba"
alias mamba="micromamba"
alias la="ls -lah"


# User specific functions
#########################

start_nvim_winter () {
  local remote_sock="/home/coleman/.cache/nvim/my-neovim-socket.sock";
  local local_sock="/Users/coleman/.cache/nvim/my-neovim-socket.sock";
  ssh winter "rm ${remote_sock}" &;
  rm "${local_sock}" &;
  wait;
  ssh -L "${local_sock}":"${remote_sock}" winter nvim --headless --listen "${remote_sock}";
}

connect_neovide_winter () {
  local local_sock="/Users/coleman/.cache/nvim/my-neovim-socket.sock";
  neovide --server="${local_sock}";
}

