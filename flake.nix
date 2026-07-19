{

  description = "My first flake!";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }:
    let
      inherit (nixpkgs) lib;
#      lib = nixpkgs.lib;
      in {
    nixosConfigurations = {
      logdog-nixos = lib.nixosSystem {
        system = "x86_64-linux";
	modules = [ ./configuration.nix ];
			      };
    };
  };
}
