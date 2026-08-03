{ pkgs, ... }: {
#  imports = [ <plasma-manager/modules> ];

    programs.plasma = {
      enable = true;

      # System Settings > Keyboard > Shortcuts > Plasma Manager
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


  };
}
