{ inputs, pkgs, ...}: {

  programs.firefox.enable = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-40.10.5"
  ];

  services.flatpak.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  vim
  wget
  curl
  git
  glfw3-minecraft
  fastfetch
  alacritty
  tldr
  neovim
  klassy
  tmux
  inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  prismlauncher
  vrcx
  xclicker
  yazi
  r2modman
  (discord.override {
    withVencord = true;
    withOpenASAR = true;
  })
  ];




}
