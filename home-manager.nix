{ config, pkgs, ... }:

{

  imports =
  [ 
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dmiller";
  home.homeDirectory = "/home/dmiller";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  nixpkgs = {
   config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
     };
   };
  
  home.packages = [
    (pkgs.discord.override { withOpenASAR = true;  withVencord = true;})
    pkgs.git
    pkgs.firefox
    pkgs.thunderbird
    pkgs.slack
    pkgs.neovim
    pkgs.steam
    pkgs.vscode
    pkgs.docker
    pkgs.awscli2
    pkgs.xclip
    pkgs.aws-sso-cli
  ];

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      pkgs.vscode-extensions.bbenoist.nix
      pkgs.vscode-extensions.ms-vscode-remote.remote-ssh
      pkgs.vscode-extensions.oderwat.indent-rainbow
      pkgs.vscode-extensions.github.copilot
      pkgs.vscode-extensions.ms-vsliveshare.vsliveshare
    ];
    userSettings = {
      "files.autoSave" = "afterDelay";
      "files.autoSaveDelay" = 2000;
      "window.zoomLevel" = 2;
      "editor.inlineSuggest.enabled" = true;
    };
  };

  programs.git = {
    enable = true;
    userName = "dmiller";
    userEmail = "dev@darylmiller.me";
  };

  programs.zsh.enable = true;
  programs.zsh = {
    shellAliases = {
    home-update = "home-manager switch -f ~/repo/nixos-configs/home-manager.nix";
    os-update = "sudo nixos-rebuild switch";
    repo = "cd ~/repo";
    work = "cd ~/repo/work";
    tcopy = "xclip -selection c";
  };
  oh-my-zsh = {
      enable = true;
      plugins = [ 
        "git"
        "aws"
        "vscode"
        ];
      theme = "refined";
    };
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
