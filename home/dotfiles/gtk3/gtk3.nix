# Sourced by home-manager
{ config, pkgs, ... }:

{

    imports = [];
    home.file.".config/gtk-3.0/" = {
        source = ./config;
        recursive = true;
    };
}