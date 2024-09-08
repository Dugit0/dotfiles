{ config, lib, pkgs, ... }: {
    imports = [
        ./../../modules/default.nix
    ];
    home.username = "dmitry";
    home.homeDirectory = "/home/dmitry";
    home.stateVersion = "24.05";
    programs.home-manager.enable = true;
}
