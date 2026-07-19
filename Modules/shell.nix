{ input, pkgs, ... }: {
  programs.bash.enable = false;
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  environment.systemPackages = with pkgs; [
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc
  ];

}
