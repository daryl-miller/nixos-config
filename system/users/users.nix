{ config, pkgs, ... }:

{
    imports = [ ./shell.nix ];
    
    users.users.dmiller = {
            isNormalUser = true;
            description = "Daryl";
            extraGroups = [ "networkmanager" "wheel" "docker" ];
            packages = with pkgs; [
            home-manager
        ];
    };    

}