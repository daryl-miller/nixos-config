{ config, pkgs, ... }:

{
    imports = [
      ./dotfiles/dotfiles.nix
      ./packages/packages.nix
      ./user/user.nix
    ];

    # paths it should manage.
    home.stateVersion = "23.05";

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
