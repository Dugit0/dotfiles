{ lib, pkgs, ... }: {
    # programs.nix-ld.enable = true;
    # programs.nix-ld.libraries = with pkgs; [
    #     # Add any missing dynamic libraries for unpackaged programs
    #     # here, NOT in environment.systemPackages
    #     clangd
    # ];
    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        # Steam
        "steam"
        "steam-original"
        "steam-unwrapped"
        "steam-run"

        # Obsidian
        "obsidian"

        # Discord
        "discord"

        # Rustdesk
        "libsciter"

    ];
    environment.systemPackages = with pkgs; [
        # Desktop apps
        alacritty
        telegram-desktop
        brave
        syncthing
        zathura
        kdePackages.okular
        obsidian
        # discord
        # pkgs.rustdesk
        rustdesk


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

        # Qt
        qt6.qtwayland

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
        hyprpaper
        # hyprpicker
        # pyprland
        # hyprcursor
        wlogout
        waybar
        wofi
        brightnessctl

        # rofi

        # Network
        networkmanager
        wireguard-tools
    ];
    fonts.enableDefaultPackages = true;
    fonts.packages = with pkgs; [
        (nerdfonts.override { fonts = [ "CascadiaCode" ]; })
    ];
}
