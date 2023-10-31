# System level packages
# TODO: Go through and break up packages into what they are required by. 
# TODO: Look at verison pinning
# TODO: Transition packages that don't need to be system level packages to the correct place

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
        feh
        gtk3
        gtk3-x11
        dex
        dunst
        sysstat #Required for cpu-usage
        lm_sensors #Required for temperature scanning
        power-profiles-daemon #Power profile for i3 script
        scrot #Screenshot
        imagemagick #Blur lock screen
    ];

    fonts.packages = with pkgs; [
        nerdfonts
        noto-fonts
        noto-fonts-cjk
        noto-fonts-emoji
        liberation_ttf
        fira-code
        fira-code-symbols
        mplus-outline-fonts.githubRelease
        dina-font
        proggyfonts
        font-awesome
        powerline-fonts
        powerline-symbols
        dejavu_fonts
        freefont_ttf
        gyre-fonts # TrueType substitutes for standard PostScript fonts
        unifont
        noto-fonts-color-emoji
    ];

    programs.thunar.enable = true;

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };

    programs.noisetorch.enable = true;

    programs.partition-manager.enable = true;

    virtualisation.docker.enable = true;


}