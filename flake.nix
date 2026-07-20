{

  description = "My first flake!";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    zen-browser = {
          url = "github:youwen5/zen-browser-flake";
          inputs.nixpkgs.follows = "nixpkgs";
        };

    nixpkgs-xr.url = "github:nix-community/nixpkgs-xr";

  };

  outputs = { self, nixpkgs, nixpkgs-xr, ... }@inputs:
    let
      inherit (nixpkgs) lib;
#      lib = nixpkgs.lib;
      in {
    nixosConfigurations = {
        logdog-nixos = lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          nixpkgs-xr.nixosModules.nixpkgs-xr
        ];
			      };
    };
  };
}
