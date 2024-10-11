{pkgs, ...}: {
  ##########################################################################
  #
  #  Install all apps and packages here.
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
    cmake
    fastfetch
    fzf
    gcc
    git
    go
    lua
    neovim
    ninja
    nmap
    parallel
    pure-prompt
    python3
    ripgrep
    rustup
    stow
    tmux
    tree
    vim
    tree-sitter
    wget
    ncurses
    zig
    glow
    zoxide
  ];

}
