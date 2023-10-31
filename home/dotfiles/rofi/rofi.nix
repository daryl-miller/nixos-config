# Sourced by home-manager
{ config, pkgs, ... }:

{

    imports = [];
    home.file.".config/rofi/" = {
        source = ./config;
        recursive = true;
    };
}