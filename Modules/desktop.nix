{config, input, pkgs, ... }: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
      proton-ge-rtsp-bin
    ];

    package = pkgs.steam.override {
      extraProfile = ''
      export PRESSURE_VESSEL_IMPORT_OIPENXR_1_RUNTIMES=1
      unset TZ
      '';
    };



  };


  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

services.xserver.videoDrivers = ["nvidia"];
hardware.nvidia = {
  modesetting.enable = true;
  open = true;
  nvidiaSettings = true;
  package = config.boot.kernelPackages.nvidiaPackages.stable;
};


  programs.gamemode.enable = true;

  services.flatpak.enable = true;




}
