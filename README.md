# Dotfiles 

Linux-MacOS dotfiles.
To use my config:

1. Clone the repo:
``` bash
git clone https://github.com/fist-it/dotfiles ~/.dotfiles
```

2. Use GNU [stow](https://www.gnu.org/software/stow/) to create symbolic links:
``` bash
cd ~/.dotfiles

stow .
```

## Tools

Tools I'm currently using:

### command line:

- shell: `Zsh` with [``OhMyZsh``](https://ohmyz.sh/)  ([config](.zshrc))
- prompt: [`pure prompt`](https://github.com/sindresorhus/pure)
- Terminal emulator: [`kitty`](https://sw.kovidgoyal.net/kitty/) ([config](.config/kitty/kitty.conf))
- navigation: cd replaced by [`zoxide`](https://github.com/ajeetdsouza/zoxide)
- [`fzf`](https://github.com/junegunn/fzf) ([config](.zshrc#L139) in
  zsh)
- system information: [`fastfetch`](https://github.com/fastfetch-cli/fastfetch)
([config](.config/fastfetch/config.jsonc))
- [`ripgrep`](https://github.com/BurntSushi/ripgrep)

### System related

- Linux:
    - [`i3`](https://i3wm.org/) Window Manager
    - simple [`scripts`](.config/scripts/)
    - [`rofi`](https://github.com/davatorium/rofi)
    - [`flameshot`](https://flameshot.org/) (simple screenshots)
- MacOS:
    - [`aerospace`](https://github.com/nikitabobko/AeroSpace) Window Manager
    - [`karabiner elements`](https://karabiner-elements.pqrs.org/) (rebinding
      CapsLock to Esc)

## Editor

I use [`neovim`](https://github.com/neovim/neovim) 0.10 nightly with [`Lazy`](https://github.com/folke/lazy.nvim)
plugin manager.

Configuration: **[`lua`](.config/nvim/)**

- Major plugins:
    - Lsp: [`lsp-zero`](https://github.com/VonHeikemen/lsp-zero.nvim)
    - Copilot: [`copilot.lua`](https://github.com/zbirenbaum/copilot.lua)
    - Diagnostics: [`trouble.nvim`](https://github.com/folke/trouble.nvim)
    - File navigation: [`oil.nvim`](https://github.com/stevearc/oil.nvim)
    - Navigating changes: [`undotree`](https://github.com/mbbill/undotree)
    - Picker: [`Telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)

- Smaller plugins:
    - Keybinds help: [`Which-key.nvim`](https://github.com/folke/which-key.nvim)
    - Markdown preview: [`Glow.nvim`](https://github.com/ellisonleao/glow.nvim)
    - Hyperlink navigation: [`gx.nvim`](https://github.com/chrishrb/gx.nvim)
    - Git integration: [`fugitive.vim`](https://github.com/tpope/vim-fugitive)

- Visual plugins:
    - Colorscheme: [`rose-pine.nvim`](https://github.com/rose-pine/neovim)
    - Line: [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)
    - Color hex preview: [`nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)

I also use [`mason.nvim`](https://github.com/williamboman/mason.nvim) to download
and synchronise language servers, linters and formatters.
