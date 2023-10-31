{ config, pkgs, ... }:

{
    imports = [
        ./git.nix
        ./shell.nix
        ./vscode.nix
        ./i3.nix
    ];

}