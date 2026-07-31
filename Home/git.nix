{ config, pkgs, lib, ... }: {

  programs.git = {
    enable = true;
    userName = "BubblesPuddle";
    userEmail = "logan.baker7562@gmail.com";
    settings = {
      init.defaultBranch = "main";
    };




    };


}
