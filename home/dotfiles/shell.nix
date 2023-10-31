
{ config, pkgs, ... }:

{
    imports = [];

    programs.zsh.enable = true;
    programs.zsh = {
        shellAliases = {
        home-update = "home-manager switch -f ~/repo/nixos-configs/home/home.nix";
        os-update = "sudo nixos-rebuild switch";
        repo = "cd ~/repo";
        work = "cd ~/repo/work";
        tcopy = "xclip -selection c";
    };
    oh-my-zsh = {
        enable = true;
        plugins = [ 
            "git"
            "aws"
            "vscode"
            ];
        theme = "refined";
        };
    };
}