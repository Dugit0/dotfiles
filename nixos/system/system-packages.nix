{ pkgs, ... }: {
    # programs.nix-ld.enable = true;
    # programs.nix-ld.libraries = with pkgs; [
    #     # Add any missing dynamic libraries for unpackaged programs
    #     # here, NOT in environment.systemPackages
    #     clangd
    # ];
    environment.systemPackages = with pkgs; [
        # Desktop apps
        alacritty
        telegram-desktop
        brave
        # discord
        # obsidian


        # CLI utils
        bat
        cmatrix
        gotop
        lf
        htop
        neofetch
        speedtest-cli
        tree
        zip
        unzip

        # bluez
        # bluez-tools

        # Display manager
        greetd.tuigreet

        # Base coding utils
        texlive.combined.scheme-full
        gnumake
        gcc14
        glibc
        python312
        cmake
        openssl

        # C libraries
        # ncurses # lib for FrBrGeorge course LinuxDevelopment

        # neovim dependencies
        nodejs          # for pyright
        tree-sitter     # for some specific grammar (latex and etc.)
        clang-tools     # NOTE: make sure mason.nvim don't install clangd
        marksman        #
        ripgrep         # for telescope live-grep
        fd              # for telescope (optional)

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
        # hyprpaper
        # hyprpicker
        # pyprland
        # hyprcursor
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
