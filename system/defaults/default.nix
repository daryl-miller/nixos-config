{ config, pkgs, ... }:

{
    imports = [];

    #Enable boot loader
    boot.loader.grub.enable = true;
    boot.loader.grub.useOSProber = true;

    # Set your time zone.
    time.timeZone = "Australia/Melbourne";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_GB.UTF-8";

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "en_AU.UTF-8";
        LC_IDENTIFICATION = "en_AU.UTF-8";
        LC_MEASUREMENT = "en_AU.UTF-8";
        LC_MONETARY = "en_AU.UTF-8";
        LC_NAME = "en_AU.UTF-8";
        LC_NUMERIC = "en_AU.UTF-8";
        LC_PAPER = "en_AU.UTF-8";
        LC_TELEPHONE = "en_AU.UTF-8";
        LC_TIME = "en_AU.UTF-8";
    };

    environment.pathsToLink = [ "/libexec" ]; # links /libexec from derivations to /run/current-system/sw

    # Enable the KDE Plasma Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;
    # services.xserver.displayManager.sddm.autoLogin.enable = true;
    # services.xserver.displayManager.sddm.autoLogin.user = "dmiller";

    # Configure keymap in X11
    services.xserver = {
        layout = "us";
        xkbVariant = "";
    };

    # Configure console keymap
    console.keyMap = "uk";

    # Don't want it to be huge so I can search it more easily
    services.journald.extraConfig = "SystemMaxUse=500M";

    system.stateVersion = "23.05";
}