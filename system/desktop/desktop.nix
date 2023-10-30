# Settings for my main desktop

{ config, pkgs, ... }:

{
    imports = [ ./nvidia.nix ./controller/controllers.nix ];

    # Bootloader target
    boot.loader.grub.device = "/dev/nvme0n1";

    fileSystems."/ssd" = { 
        device = "/dev/disk/by-uuid/aa5c0f5e-89a7-45c4-9b91-56f636e5aa38";
        fsType = "ext4";
    };
    
    networking.hostName = "krux"; # Define your hostname.

}