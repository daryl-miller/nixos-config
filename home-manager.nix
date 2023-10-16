{ config, pkgs, ... }:

{
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
  ];

  programs.git = {
    enable = true;
    userName = "dmiller";
    userEmail = "dev@darylmiller.me";
  };

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };


  programs.bash.enable = true;


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
