{ config, pkgs, ... }:

{
    imports = [];

    # Allow xbox controller to work
    boot.extraModprobeConfig = '' options bluetooth disable_ertm=1 '';
}