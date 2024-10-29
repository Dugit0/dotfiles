{ pkgs, ... }:

{
    # Enable Display Manager
    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --remember --cmd Hyprland";
                # command = "${pkgs.hyprland}/bin/Hyprland"
                user = "greeter";
            };
        };
    };

}
