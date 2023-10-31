# Sourced by home-manager
{ config, pkgs, ... }:

{
    imports = [];

    home.file.".config/dunst/dunstrc".source = ./dunstrc;

}