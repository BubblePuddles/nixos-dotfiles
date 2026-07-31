{ config, pkgs, lib, ... }: {

  programs.git = {
    enable = true;


    settings = {
      user.Name = "BubblesPuddle";
      user.Email = "logan.baker7562@gmail.com";
      init.defaultBranch = "main";
    };




    };


}
