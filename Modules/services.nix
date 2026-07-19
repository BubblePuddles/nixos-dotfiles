{ pkgs, ... }: {

  services = {
    # X11 Windowing
    xserver.enable = true;

    # KDE Plasma DE
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;

    # Keymap in X11
    xserver.xkb = {
      layout = "us";
      variant = "";
    };

    printing.enable = true;


    # Enable touchpad support (enabled default in most desktopManager).
    # services.xserver.libinput.enable = true;

  };

}
