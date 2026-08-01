{ pkgs, ... }: {

  programs.zed-editor = {
    enable = true;
    defaultEditor = true;
    extraPackages = [
      pkgs.nixd
      pkgs.nil
    ];
    extensions = [
      "nix"
      "html"
      "java"
      "git firefly"
      "toml"
      "dockerfile"
      "make"
      "c#"
      "lua"
      "kotlin"
      "zig"
      "csv"
      "docker compose"
      "ini"
      "gruvbox material mix"
    ];

    userSettings = {
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        mode = "system";
        light = "Gruvbox Material Light";
        dark = "Gruvbox Material Dark";
      };
      env = {
        TERM = "alacritty";
      };
      font_family = "Mononoki Nerd Font";
      line_height = "comfortable";
      shell = {
        program = "fish";
      };




    };

  };



}
