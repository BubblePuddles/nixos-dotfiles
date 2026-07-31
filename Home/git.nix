{ config, pkgs, lib, ... }: {

  programs.git = {
    enable = true;
    userName = "BubblesPuddle";
    userEmail = "logan.baker7562@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };




    };


}
