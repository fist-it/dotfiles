{pkgs, ...}: {
  ##########################################################################
  # Install all apps and packages here.
  #
  #  NOTE: Your can find all available options in:
  #    https://daiderd.com/nix-darwin/manual/index.html
  #
  ##########################################################################

  # The apps installed by homebrew are not managed by nix, and not reproducible!
  # But on macOS, homebrew has a much larger selection of apps than nixpkgs, especially for GUI apps!
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      # 'zap': uninstalls all formulae(and related files) not listed here.
      cleanup = "zap";
    };

    taps = [
      "homebrew/services"
      "felixkratz/formulae"
      "nikitabobko/tap"
    ];

    # `brew install`
    brews = [
      "docker"
      "docker-completion"
      "git-spice"
      "sketchybar"
      "spicetify-cli"
      "libvterm"
      "neovim"
      "cmake"
      "ncdu"
      "pkgconf"
      "pyenv"
      "ca-certificates"
      "mpdecimal"
      "openssl@3"
      "readline"
      "sqlite"
      "gmp"
      "isl"
      "mpfr"
      "libmpc"
      "openblas"
      "gcc"
      "tealdeer"
    ];

    # `brew install --cask`
    casks = [
      "firefox@developer-edition"
      "logitech-g-hub"
      "kitty"
      "font-sf-pro"
      "keepassxc"
      "orbstack"
      "aerospace"
      "wireshark"
      "raycast"
      "iina"
      "hiddenbar"
      "vlc"
    ];
  };

  # Install packages from nix's official package repository.
  #
  # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
  # But on macOS, it's less stable than homebrew.
  #
  # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
  environment.systemPackages = with pkgs; [
    just
    btop
    fastfetch
    fzf
    git
    gh
    go
    lua
    ninja
    nmap
    pure-prompt
    ripgrep
    rustup
    stow
    tmux
    tree
    vim
    tree-sitter
    wget
    ncurses
    zoxide
  ];
}
