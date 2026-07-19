{ pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."logdog" = {
    isNormalUser = true;
    description = "Logan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      vesktop
      zed-editor
      easyeffects

    #  thunderbird
    ];
    # openssh.authorizedKeys.keys = [ "ssh-dss AAAAB3Nza... logdog@foobar" ];
  };


}
