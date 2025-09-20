{ config, ... }:
{

  home.file = {
    ".config/zsh/.p10.zsh" = {
      source = ./zsh/.p10.zsh;
    };
  };

}

