# Entry point config. Copy this to /etc/nixos/configuration.nix
# Need to look into way of this being injected by nixos-rebuild

{ config, pkgs, ... }:
{
  imports = [
    /home/dmiller/repo/nixos-configs/system/config.nix 
  ];
}