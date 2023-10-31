{ config, pkgs, ... }:

{
    imports = [];

    programs.vscode = {
            enable = true;
            extensions = with pkgs.vscode-extensions; [
            pkgs.vscode-extensions.bbenoist.nix
            pkgs.vscode-extensions.ms-vscode-remote.remote-ssh
            pkgs.vscode-extensions.oderwat.indent-rainbow
            pkgs.vscode-extensions.github.copilot
            pkgs.vscode-extensions.ms-vsliveshare.vsliveshare
            pkgs.vscode-extensions.usernamehw.errorlens
            pkgs.vscode-extensions.ms-azuretools.vscode-docker
            pkgs.vscode-extensions.ms-vscode-remote.remote-containers
        ];
        userSettings = {
            "files.autoSave" = "afterDelay";
            "files.autoSaveDelay" = 2000;
            "window.zoomLevel" = 2;
            "editor.inlineSuggest.enabled" = true;
            "window.titleBarStyle" = "custom";
            "workbench.iconTheme" = "vscode-icons";
        };
    };
}