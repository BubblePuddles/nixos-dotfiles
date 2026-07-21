{ config, pkgs, ... }: {

  boot.loader = {
    timeout = 8;
    efi = {
      canTouchEfiVariables = true;
    };

    limine = {
      enable = true;
      efisupport = true;
      maxGenerations = 30;
    };

  };



}
