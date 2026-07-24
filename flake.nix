{

  description = "My first flake!";

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

    nixpkgs-xr.url = "github:nix-community/nixpkgs-xr";

  };

  outputs = { self, nixpkgs, nixpkgs-xr, home-manager, ... }@inputs:
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
          ./home.nix
        ];
			};
    };

  };
}
