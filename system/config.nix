# Entry point config for system configuration

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      <home-manager/nixos>
      ./audio/audio.nix
      ./defaults/default.nix
      ./desktop/desktop.nix
      ./display/display.nix
      ./networking/networking.nix
      ./packages/packages.nix
      ./users/users.nix
    ];
}
