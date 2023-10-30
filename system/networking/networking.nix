{ config, pkgs, ... }:

{
    imports = [ ./bluetooth.nix ];

    networking.networkmanager.enable = true;

}