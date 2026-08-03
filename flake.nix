{

  description = "Logdog's Flake";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };


    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };


    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    nixpkgs-xr.url = "github:nix-community/nixpkgs-xr";

  };

  outputs = { self, nixpkgs, nixpkgs-xr, home-manager, plasma-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      inherit (nixpkgs) lib;
      pkgs = nixpkgs.legacyPackages.${system};
#      lib = nixpkgs.lib;
      in {
    nixosConfigurations = {
        logdog-nixos = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            nixpkgs-xr.nixosModules.nixpkgs-xr
          ];
			  };
      };

    homeConfigurations = {
      logdog = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          inputs.plasma-manager.homeModules.plasma-manager
          ./Home/home.nix
        ];
			};
    };

  };
}
