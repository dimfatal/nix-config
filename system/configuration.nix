# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, inputs, ... }:

let
  customFonts = pkgs.nerdfonts.override {
    fonts = [
      "JetBrainsMono"
      "Iosevka"
    ];
  };
in
{
  # enable docker
  virtualisation.docker.enable = true;

  # use docker without Root access (Rootless docker)
  virtualisation.docker.rootless = {
     enable = true;
     setSocketVariable = true;
  };

  programs.fish.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dimfatal = {
    isNormalUser = true;
    # wheel for 'sudo', uucp for bazecor to access ttyAMC0 (keyboard firmware updates)
    extraGroups = [ "docker" ];
    shell = pkgs.fish;
  };

  system.stateVersion = "23.05"; # Did you read the comment?

}
