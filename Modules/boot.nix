{ config, pkgs, ... }: {

  boot.loader = {
    timeout = 7;
    efi = {
      canTouchEfiVariables = true;
    };

    limine = {
      enable = true;
      efiSupport = true;
      maxGenerations = 25;
    };

  };



}
