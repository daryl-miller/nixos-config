{ config, pkgs, ... }:

{
    imports = [
        ./git.nix
        ./shell.nix
        ./vscode.nix
        ./i3/i3.nix
        ./rofi/rofi.nix
        ./dunst/dunst.nix
        ./xresources/xresources.nix
    ];

}