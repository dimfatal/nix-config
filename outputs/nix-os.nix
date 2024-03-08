{ inputs, system, pkgs, ... }:

with inputs;

let
  inherit (nixpkgs.lib) nixosSystem;
  inherit (pkgs) lib;
in
{
  configuration-nix = nixosSystem {
    inherit lib pkgs system;
    specialArgs = { inherit inputs; };
    modules = [      
      ../system/configuration.nix
    ];
  };
}
