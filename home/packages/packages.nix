# System level packages
# TODO: Go through and break up packages into what they are required by. 
# TODO: Look at verison pinning

{ config, pkgs, ... }:

{
    imports = [];

    nixpkgs = {
        config = {
            allowUnfree = true;
            allowUnfreePredicate = (_: true);
        };
    };

    home.packages = [
        pkgs.git
        pkgs.firefox
        pkgs.thunderbird
        pkgs.slack
        pkgs.neovim
        pkgs.vscode
        pkgs.docker
        pkgs.awscli2
        pkgs.xclip
        pkgs.aws-sso-cli
        pkgs.logseq
        (pkgs.discord.override { withOpenASAR = false;  withVencord = true;})
    ];
}