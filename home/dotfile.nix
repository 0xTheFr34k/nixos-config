{ config, ... }:
{

  home.file = {
    ".config/zsh/.p10k.zsh" = {
      source = ./zsh/.p10k.zsh;
    };
  };

}

