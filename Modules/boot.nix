{ config, pkgs, ... }: {

  boot.loader = {
    timeout = 8;
    efi = {
      canTouchEfiVariables = true;
    };

    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
    };
  };



}
