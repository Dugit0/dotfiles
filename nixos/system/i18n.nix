{
    i18n.supportedLocales = [
        "en_US.UTF-8/UTF-8"
        "ru_RU.UTF-8/UTF-8"
    ];

    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
        LC_TIME = "en_US.UTF-8";
    };

    console = {
        font = "Lat2-Terminus16";
        # keyMap = "us";
        useXkbConfig = true; # use xkb.options in tty.
    };
}
