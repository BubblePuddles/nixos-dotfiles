{ config, pkgs, ... }: {

  boot.loader = {
    timeout = 8;
    efi = {
      canTouchEfiVariables = true;
    };

    limine = {
      enable = true;
      efiSupport = true;
      maxGenerations = 30;
    };

  };



}
