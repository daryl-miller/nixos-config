{ config, pkgs, ... }:

{

    imports =
    [ # Include the results of the hardware scan.
     <home-manager/nixos>
    ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dmiller";
  home.homeDirectory = "/home/dmiller";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  nixpkgs = {
   config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
     };
   };
  
  home.packages = [
    (pkgs.discord.override {  withOpenASAR = true;  withVencord = true;})
    pkgs.git
    pkgs.firefox
    pkgs.thunderbird
    pkgs.slack
    pkgs.neovim
    pkgs.steam
    pkgs.vscode
  ];

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      pkgs.vscode-extensions.bbenoist.nix
      pkgs.vscode-extensions.ms-vscode-remote.remote-ssh
      pkgs.vscode-extensions.oderwat.indent-rainbow
    ];
    userSettings = {
      "files.autoSave" = "afterDelay";
      "files.autoSaveDelay" = 2000;
      "window.zoomLevel" = 2;
    };
  };

  programs.git = {
    enable = true;
    userName = "dmiller";
    userEmail = "dev@darylmiller.me";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
