{
    description = "My system configuration";

    inputs = {
        # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        # nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";
        nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
    };

    outputs = { self, nixpkgs, home-manager, hyprpanel, ... }@inputs:
    # let
    #     system = "x86_64-linux";
    #     pkgs = import nixpkgs {
    #         inherit system;
    #         overlays = [
    #             inputs.hyprpanel.overlay
    #         ];
    #     };
    # in 
    {
        nixosConfigurations.ThinkPadE15 = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./system/configuration.nix
                ./hosts/ThinkPadE15/hardware-configuration.nix
                { nixpkgs.overlays = [ hyprpanel.overlay ]; }
                home-manager.nixosModules.home-manager {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.dmitry = import ./hosts/ThinkPadE15/user.nix;
                }
            ];
        };
    };
}
