{ config, pkgs, ...}: {
  imports = [
    ./network.nix
    ./locales.nix
    ./user.nix
    ./audio.nix
    ./settings.nix
    ./boot.nix
    ./packages.nix
    ./services.nix
    ./shell.nix
    ./desktop.nix
    ./vr.nix
  ];

}
