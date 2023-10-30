{ config, pkgs, ... }:

{
    imports = [];

    #Install zsh
    programs.zsh.enable = true;

    #Set default shell to zsh
    users.defaultUserShell = pkgs.zsh;
}