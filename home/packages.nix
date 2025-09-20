{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    wget
    k9s
    k6
    k3d
    yq
    hurl
    go-task
    zsh-powerlevel10k
    eza
    fzf
    nh
    ripgrep
    jq
    fd
    bat
    uv
    tree
    zip
    unzip
    btop
    tmux
    direnv
    devenv
    lazygit
    lazydocker
    sshpass
    neovim
    vimPlugins.LazyVim
  ];

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    userName = "0xthefr34k";
    userEmail = "tayayassine6@live.fr";
  };

  programs.direnv.enable = true;

}
