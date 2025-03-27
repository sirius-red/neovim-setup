# Neovim Setup

My own Neovim setup using Lazy and AstroNvim

## Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (_Optional for icons_)
- [Neovim 0.10+ (_Not_ including nightly)](https://github.com/neovim/neovim/releases/tag/stable)
- [Tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md) (_Note:_ This is only necessary if you want to use `auto_install` feature with Treesitter)
- A clipboard tool is necessary for the integration with the system clipboard (see [`:help clipboard-tool`](https://neovim.io/doc/user/provider.html#clipboard-tool) for supported solutions)
- Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using) <sup>[[1]](#1)</sup>
- Optional Requirements:
  - [ripgrep](https://github.com/BurntSushi/ripgrep) - live grep telescope search (`<leader>fw`)
  - [lazygit](https://github.com/jesseduffield/lazygit) - git ui toggle terminal (`<leader>tl` or `<leader>gg`)
  - [go DiskUsage()](https://github.com/dundee/gdu) - disk usage toggle terminal (`<leader>tu`)
  - [bottom](https://github.com/ClementTsang/bottom) - process viewer toggle terminal (`<leader>tt`)
  - [Python](https://www.python.org/) - python repl toggle terminal (`<leader>tp`)
  - [Node](https://nodejs.org/en/) - node repl toggle terminal (`<leader>tn`)

> [!NOTE]
> ­<sup id="1">[1]</sup> Note when using default theme: For MacOS, the default terminal does not have true color support. You will need to use [iTerm2](https://iterm2.com/), [Kitty](https://sw.kovidgoyal.net/kitty/), [WezTerm](https://wezfurlong.org/wezterm/), or another [terminal emulator](https://github.com/termstandard/colors?tab=readme-ov-file#truecolor-support-in-output-devices) that has true color support.

## Installation

> [!TIP]
> Out-of-the-box configurations can be enabled via the `options` parameter in the `init()` function call in the `~/.config/nvim/init.lua` file.

### Linux/Mac OS (Unix)

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

Or remove them

```shell
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

#### Clone the repository

```shell
git clone --depth 1 https://github.com/sirius-red/neovim-setup ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

### Windows (Powershell)

#### Make a backup of your current nvim and nvim-data folder

```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

Or remove them

```pwsh
Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force
Remove-Item $env:LOCALAPPDATA\nvim-data -Recurse -Force
```

#### Clone the repository

```pwsh
git clone --depth 1 https://github.com/sirius-red/neovim-setup $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
nvim
```

## Basic Setup

#### Install LSP

Enter `:LspInstall` followed by the name of the server you want to install<br>
Example: `:LspInstall pyright`

#### Install language parser

Enter `:TSInstall` followed by the name of the language you want to install<br>
Example: `:TSInstall python`

#### Install Debugger

Enter `:DapInstall` followed by the name of the debugger you want to install<br>
Example: `:DapInstall python`

#### Manage plugins

Run `:Lazy check` to check for plugin updates

Run `:Lazy update` to apply any pending plugin updates

Run `:Lazy clean` to remove any disabled or unused plugins

Run `:Lazy sync` to update and clean plugins

#### Update AstroNvim Packages

Run `:AstroUpdate` (`<leader>pa`) to update both Neovim plugins and Mason packages

## Links

- [AstroNvim Website](https://astronvim.com)
- [AstroNvim Documentation](https://docs.astronvim.com)
