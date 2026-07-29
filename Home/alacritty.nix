{ config, pkgs, ... }: {

  programs.alacritty = {
    enable = true;
    theme = "gruvbox_dark";
    settings = {

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
