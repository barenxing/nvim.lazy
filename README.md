# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Fix .gitignore for macOS

Add the following two lines to the .gitignore for macOS

```text
.DS_Store
**/.DS_Store
```

## My modification after starting nvim

Run LazyHealth command to check health and install missing packages via homebrew

Here is the list that I installed.

```shell
brew install zoxide
brew install fzf
brew install git
brew install lazygit
brew install fd-find
brew install curl
brew install ripgrep
brew install tree-sitter-cli
brew install luarocks
brew install ast-grep
brew install fish
brew install fd
brew install wget
brew install rust
brew install golang
```

## Enable LazyVim Extras

```text
lang.json
lang.markdown
lang.toml
```

## Disable Dashboard

The LazyVim documentation is a bit old.  Here is how to disable Dashboard

```lua
-- lua/plugins/dashboard.lua
return {
  {
    "folke/snacks.vim",
    opts = { dashboard = { enabled = false } },
  },
}
```

## install my plugins

- [x] oil.lua
