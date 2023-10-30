{ config, pkgs, ... }:

{
    imports = [];

    # Enable sound with pipewire.
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    security.rtkit.enable = true;
}