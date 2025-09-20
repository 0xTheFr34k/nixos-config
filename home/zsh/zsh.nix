{ config, pkgs, ... }:
{
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "docker" "kubectl" ];
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      source ~/.config/zsh/.p10k.zsh
      if [ -n ''${commands[fzf-share]} ]; then
        source "$(fzf-share)/key-bindings.zsh"
        source "$(fzf-share)/completion.zsh"
      fi
    '';

    shellAliases = {
      cat = "bat";
      grep = "rg";
      cd = "z";
      vi = "nvim";
      vim = "nvim";
      ls = "eza --icons";
      tree = "eza --tree --icons";
      xopy = "pbcopy <";
      xpaste = "pbpaste >";
      xshow = "pbpaste";
    };

  };

}
