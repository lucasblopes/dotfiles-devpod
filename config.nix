{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "tools";
      paths = [
        bash-completion
        neovim
        go
        nodejs_22
        starship
        fd
        ripgrep
        fzf
        lazygit
        kubectl
        kubectx
        k9s
        fluxcd
        mise
        zoxide
        eza
        bat
        docker
        python3
        tailscale
        (tmux.withPlugins (plugins: [
          plugins.tmux-sensible
          plugins.vim-tmux-navigator
          plugins.tmux-yank
        ]))
      ];
    };
  };
}
