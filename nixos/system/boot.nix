{
    boot = {
        supportedFilesystems = [ "ntfs" ];
        loader.systemd-boot.enable = true;
        loader.efi.canTouchEfiVariables = true;
    };
}
