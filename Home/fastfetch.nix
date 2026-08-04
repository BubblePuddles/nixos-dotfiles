{ config, pkgs, lib, ... }: {

  programs.fastfetch = {
    enable = true;

    settings = {

      logo = {
          source = "nixos_small";
        };
        display = {
          key = {
            type = "icon";
          };
          size = {
            ndigits = 0;
            maxPrefix = "MB";
          };
          color = {
            keys = "magenta";
          };
          separator = "  ~ ❱ ";
        };

        modules = [
          {
            type = "title";
            color = {
              user = "green";
              at = "red";
              host = "blue";
            };
          }
          "os"
          "cpu"
          "gpu"
          "memory"
          "uptime"
          "terminal"
          "terminalfont"
          "shell"
          "packages"
          {
            type = "colors";
            key = "Colors";
            block = {
              range = [ 1 6 ];
            };
          }



        ];



    };

  };

}
