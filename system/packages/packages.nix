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
        btop #System monitor
        bottles #Wine manager
        wineWowPackages.stable
        wineWowPackages.waylandFull
        dconf
        vulkan-tools 
        vim
        kitty #Terminal
        arandr #Screen management
        neofetch #System info
        dmidecode #Grab system info
        balena-cli #Flash usb drives/SD cards
        unzip
        qbittorrent #Downloading linux isos
        killall 
        pavucontrol #Audio management
        feh #Background management
        gtk3 #Themeing
        gtk3-x11 #Themeing
        dex #Autostart tool
        dunst #Notification daemon
        rofi #Application launcher
        sysstat #Required for cpu-usage
        lm_sensors #Required for temperature scanning
        power-profiles-daemon #Power profile for i3 script
        scrot #Screenshot
        imagemagick #Blur lock screen
        (variety.override { fehSupport = true; }) #random backgrounds
        lxappearance #icons
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

    #File explorer
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