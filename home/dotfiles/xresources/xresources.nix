# Sourced by home-manager
{ config, pkgs, ... }:

{
    imports = [];

    home.file.".config/Xresources".source = ./Xresources;

}