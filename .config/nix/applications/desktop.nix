{ pkgs, config, ... }:

{
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
    sioyek
    rofi
    eww
  ];

  xdg.desktopEntries = {
    Balatro = {
      name = "Balatro";
      exec = "/home/fist-it/.local/Balatro.v1.0.1N/run.sh";
      terminal = false;
    };
  };
}

