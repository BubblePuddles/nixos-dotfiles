__My NixOS Configuration Gist:__

This is my first attempt at using NixOS for configuring my system. I mainly use this system for gaming, so I have more gaming-specific configuration inside of `desktop.nix` and `vr.nix`, 
although I also bring in a flake input for vr packages.

__Important Disclaimer about Home Manager__
 
My Home Manager is used standalone because I want home-manager to only manage dotfiles and processes alike.

 My Home Manager config was created with the help from [LibrePhoenix's video](https://www.youtube.com/watch?v=IiyBeR-Guqw). 

 __For first time setup:__ To install home-manager for standalone, use the commands:
-  `nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager` for the unstable release for home-manager
-  `nix-channel --update`

This gives you the home-manager channel for your system. To unlock to command for your system, run this:

-  `nix-shell '<home-manager>' -A install` (if it says home-manager is not found, log out and log back in and it should fix)

Now the Home Manager command should be available. _For additional information and clarity, there should be a `home.nix` file inside of `~/.config/home-manager` which somewhat resembles the `configuration.nix`. When 
I performed this step, I move this home.nix into my dotfiles, and that's what is located inside of this repo._ 
Another note, packages installed in `home.nix` will just install for the user.


   You can refer to the Home-Manager [documentation](https://nix-community.github.io/home-manager/installation/standalone.html) for more information

   For this configuration, I add programs to `./Modules/packages.nix`, and for other system configuration I just put the code where I see fits within my modules. 

   __Usage__

   To perform any changes done to the system configuration: `sudo nixos-rebuild switch --flake ~/.dotfiles` (Or whatever path the configuration files are located)
   
   To perform any changes done in home-manager: `home-manager switch --flake ~/.dotfiles` (Or whatever path the configuration files are located)

   To actually update the system: `nix flake update` updates the flake.lock file. Follow this with a rebuild command to perform the changes.
