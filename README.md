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
- system information: [`fastfetch`](https://github.com/fastfetch-cli/fastfetch)
([config](.config/fastfetch/config.jsonc))
- pdf-viewer: [Sioyek](https://github.com/ahrm/sioyek)
- [`ripgrep`](https://github.com/BurntSushi/ripgrep)

### System related

- Linux:
    - [`awesome`](https://awesomewm.org/) Window Manager
    - [`picom`](https://github.com/yshui/picom) X11 compositor
    - simple [`scripts`](.config/config_scripts/)
    - [`rofi`](https://github.com/davatorium/rofi)
    - [dysk](https://github.com/Canop/dysk)
- MacOS:
    - [`aerospace`](https://github.com/nikitabobko/AeroSpace) Window Manager
    - [`sketchybar`](https://github.com/FelixKratz/SketchyBar) MacOS info bar
    - [`karabiner elements`](https://karabiner-elements.pqrs.org/) (rebinding
      CapsLock to Esc)

## Editor

I use [`neovim`](https://github.com/neovim/neovim) 0.12 nightly with [`Lazy`](https://github.com/folke/lazy.nvim)
plugin manager.

Configuration: **[`lua`](.config/nvim/)**

- Major plugins:
    - Lsp: [`lsp-zero`](https://github.com/VonHeikemen/lsp-zero.nvim)
    - Copilot: [`copilot.lua`](https://github.com/zbirenbaum/copilot.lua)
    - Diagnostics: [`trouble.nvim`](https://github.com/folke/trouble.nvim)
    - File navigation: [`oil.nvim`](https://github.com/stevearc/oil.nvim)
    - Navigating changes: [`undotree`](https://github.com/mbbill/undotree)
    - Picker: [`Telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
    - quick file navigation: [`harpoon`](https://github.com/ThePrimeagen/harpoon)

- Smaller plugins:
    - Keybinds help: [`Which-key.nvim`](https://github.com/folke/which-key.nvim)
    - Markdown preview: [`Glow.nvim`](https://github.com/ellisonleao/glow.nvim)
    - Git integration: [`fugitive.vim`](https://github.com/tpope/vim-fugitive)
    - Expanded in/around vim motions: [`mini.ai`](https://github.com/echasnovski/mini.ai)

- Visual plugins:
    - Colorschemes:
        - [`rose-pine.nvim`](https://github.com/rose-pine/neovim)
        - [`poimandres.nvim`](https://github.com/olivercederborg/poimandres.nvim)
        - [`kanagawa.nvim`](https://github.com/rebelot/kanagawa.nvim)
    - Status line: [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)
    - Color preview: [`nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)
    - Startup screen: [`startup.nvim`](https://github.com/max397574/startup.nvim)

- Debugging and language specific:
    - [`nvim-dap`](https://github.com/mfussenegger/nvim-dap)
    - [`nvim-dap-go`](https://github.com/leoluz/nvim-dap-go)
    - [`rustaceanvim`](https://github.com/mrcjkb/rustaceanvim)
    - [`VimTeX`](https://github.com/lervag/vimtex)
    - [`obsidian.nvim`](https://github.com/epwalsh/obsidian.nvim)

I also use [`mason.nvim`](https://github.com/williamboman/mason.nvim) to download
and synchronise language servers, linters and formatters.
