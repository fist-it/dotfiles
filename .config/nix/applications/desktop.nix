{ pkgs, config, ... }:

{

  nixpkgs.overlays = [
    (final: prev: {
      sioyek = prev.sioyek.overrideAttrs (oldAttrs: {
        postFixup = ''
          wrapProgram $out/bin/sioyek \
          --set QT_QPA_PLATFORM xcb \
          --prefix LD_LIBRARY_PATH : "${
            prev.lib.makeLibraryPath [ prev.pipewire ]
          }"
        '';
      });
    })
  ];

  home.packages = with pkgs; [
    kitty
    firefox
    keepassxc
    hyprpaper
    hyprlock
    tor-browser
    keymapp
    discord
    pavucontrol
    swayosd
    spotify
    nemo
    rofi
    eww
    krita
    transmission_4-gtk
    mpv
    google-chrome
    sioyek
  ];

  xdg.desktopEntries = {
    Balatro = {
      name = "Balatro";
      exec = "/home/fist-it/.local/Balatro.v1.0.1N/run.sh";
      terminal = false;
    };
  };
}

