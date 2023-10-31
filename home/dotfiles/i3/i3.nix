# Sourced by home-manager
{ config, pkgs, ... }:

{
    imports = [];
    home.file.".config/i3/" = {
        source = ./config;
        recursive = true;
    };
}