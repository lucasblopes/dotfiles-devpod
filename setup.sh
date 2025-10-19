#!/bin/bash

export XDG_CONFIG_HOME="${HOME}/.config"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD"/nvim "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD"/.tmux.conf "${HOME}"/.tmux.conf
ln -sf "$PWD"/.bash_profile "${HOME}"/.bash_profile
ln -sf "$PWD"/.bashrc "${HOME}"/.bashrc
ln -sf "$PWD"/config.nix "${XDG_CONFIG_HOME}"/nixpkgs/config.nix

#source "${HOME}/.bashrc"

# 3. --- TAILSCALE INTEGRATION (Manual Setup) ---
#if command -v tailscale &> /dev/null; then
#    echo "Starting Tailscale..."
#    #sudo tailscaled --state=/var/lib/tailscale/tailscaled.state &
#    #sleep 2
#    sudo tailscale up \
#        --authkey="$TS_AUTHKEY" \
#        --hostname="devpod-$(whoami)-$(hostname)" \
#        --accept-dns=true \
#        --accept-routes
#fi

nix-env -iA nixpkgs.myPackages
source "${HOME}/.bashrc"
echo "DevPod environment ready."
