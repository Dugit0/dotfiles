{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        # Desktop apps
        alacritty
        telegram-desktop
        brave
        # discord
        # obsidian


        # CLI utils
        neofetch
        tree
        htop
        zip
        # unzip
        lf

        # bluez
        # bluez-tools

        # Base coding utils
        gnumake
        gcc
        python312
        
        git
        vim
        wget

        # Wayland stuff
        wayland
        xwayland
        wl-clipboard

        # WM and stuff
        hyprland
        waybar
        wofi
        brightnessctl
        swww
        # rofi

        # Network
        networkmanager
    ];
    fonts.enableDefaultPackages = true;
    fonts.packages = with pkgs; [
        (nerdfonts.override { fonts = [ "CascadiaCode" ]; })
    ];
}
