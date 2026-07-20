{inputs, pkgs, ... }: {

  environment.systemPackages = [
    pkgs.xrizer
    pkgs.wayvr
  ];


  services.wivrn = {
    enable = true;
    openFirewall = true;
    package = (pkgs.wivrn.override {
      cudaSupport = true; });

    steam.enable = true;
    steam.importOXRRuntimes = true;
  };






}
