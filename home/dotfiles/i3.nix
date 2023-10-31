# Sourced by home-manager
{ config, pkgs, ... }:

{
    imports = [];

    home.file.".config/i3/i3blocks.conf".source = ./i3-configs/i3blocks.conf;
}