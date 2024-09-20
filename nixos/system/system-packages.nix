{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        # Desktop apps
        alacritty
        telegram-desktop
        brave
        # discord
        # obsidian


        # CLI utils
        bat
        lf
        htop
        neofetch
        speedtest-cli
        tree
        zip
        unzip

        # bluez
        # bluez-tools

        # Base coding utils
        # libclang
        texlive.combined.scheme-full
        gnumake
        gcc
        python312

        # neovim dependencies
        nodejs # for pyright
        tree-sitter # for some specific grammar (latex and etc.)
        
        git
        vim
        wget

        # Wayland stuff
        wayland
        xwayland
        wl-clipboard

        # WM and stuff
        hyprland
        hyprlock
        hypridle
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
