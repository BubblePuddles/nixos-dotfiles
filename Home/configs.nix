{ config, pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./fastfetch.nix
    ./fish.nix
    ./git.nix
    ./packages.nix
    ./zed-editor.nix
  ];



}
