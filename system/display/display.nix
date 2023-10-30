{ config, pkgs, ... }:

{
    imports = [ ./i3.nix ];

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

}