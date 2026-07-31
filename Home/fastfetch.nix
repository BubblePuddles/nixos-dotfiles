{ config, pkgs, lib, ... }: {

  programs.fastfetch = {
    enable = true;

    settings = {

      logo = {
          source = "nixos_small";
          padding = {
            right = 1;
          };
        };
        display = {
          separator = "  ";
          size = {
            ndigits = 0;
            maxPrefix = "MB";
          };
          color = "magenta";
          key = "icon";
        };
        modules = [
          {
            type = "datetime";
            key = "Date";
            format = "{1}-{3}-{11}";
          }
          {
            type = "datetime";
            key = "Time";
            format = "{14}:{17}:{20}";
          }
          "break"
          "player"
          "media"
        ];




    };

  };

}
