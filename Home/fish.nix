{ config, pkgs, lib, ... }: {

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      fastfetch
    '';


    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
      please = "sudo";
    };

  };

}
