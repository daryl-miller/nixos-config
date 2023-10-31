{ config, pkgs, ... }:

{
    imports = [];

    programs.git = {
        enable = true;
        userName = "dmiller";
        userEmail = "dev@darylmiller.me";
    };
}