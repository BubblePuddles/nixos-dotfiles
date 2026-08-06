{ pkgs, ... }: {
#  imports = [ <plasma-manager/modules> ];

    programs.plasma = {
      enable = true;

      workspace = {
      # lookAndFeel = "org.kde.breezedark.desktop";
        colorScheme = "Gruvbox";
      #  cursor.theme = "Bibata-Modern-Ice";
      # iconTheme = "Papirus-Dark";'
        wallpaper = ./Assets/beyond-light.jpg;
      };




      # System Settings > Keyboard > Shortcuts > Plasma Manager
      # Check for conflicting keybinds
      hotkeys.commands = {

        launch-alacritty = {
          name = "Launch Alacritty";
          key = "Meta+Return";
          command = "alacritty";
        };

        launch-browser = {
          name = "Launch Zen";
          key = "Meta+B";
          command = "zen";
        };
      };

      fonts = {
        fixedWidth = {
          family = "Mononoki Nerd Font Mono";
          pointSize = 12;
        };

        general = {
          family = "Mononoki Nerd Font";
          pointSize = 12;
        };

        menu = {
          family = "Mononoki Nerd Font";
          pointSize = 12;
        };

        small  = {
          family = "Mononoki Nerd Font";
          pointSize = 10;
        };

        toolbar = {
          family = "Mononoki Nerd Font";
          pointSize = 12;
        };

        windowTitle = {
          family = "Mononoki Nerd Font";
          pointSize = 12;
        };
      };

      krunner = {
        position = "center";
      };

  };
}
