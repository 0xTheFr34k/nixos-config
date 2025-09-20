{ config, ... }:
{

  imports = [
    ./packages.nix
    ./dotfile.nix
    ./zsh.nix
  ];

  home.username = "ytaya";
  home.homeDirectory = "/Users/ytaya";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
