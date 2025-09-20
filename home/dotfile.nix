{ config, ... }:
{

  home.file = {
    ".config/zsh/.p10k.zsh" = {
      source = ./zsh/.p10k.zsh;
    };

    ".config/tmux/tmux.config" = {
      source = ./tmux/tmux.conf;
    };

    ".config/tmux/tmux.reset.config" = {
      source = ./tmux/tmux.reset.conf;
    };
  };

}

