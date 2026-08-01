{ config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    theme = "gruvbox_dark";
    settings = {

      font = {
        size = 14;
        normal = {
          family = "Mononoki Nerd Font";
          style = "Regular";
        };
      };

      window = {
        blur = true;
        opacity = 0.8;
      };

      colors = {
        primary = {
          foreground = "#FBF1C7";
          background = "#1D2021";
        };

      };
    };
  };
}
