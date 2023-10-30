{ config, pkgs, ... }:

{
    imports = [];

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        btop
        bottles
        wineWowPackages.stable
        wineWowPackages.waylandFull
        dconf
        vulkan-tools
        lutris
        vim
        libnotify
        kitty
        rofi-wayland
        swww
        arandr
        neofetch
        dmidecode
        memtester
        balena-cli
        unzip
        qbittorrent
        killall
        xautoclick
        pavucontrol
    ];

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };

    programs.noisetorch.enable = true;

    programs.partition-manager.enable = true;

    virtualisation.docker.enable = true;


}