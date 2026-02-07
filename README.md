# Neovim Config

This is my personal Neovim configuration — built for a **fast, productive, and zen coding experience**.
I've been using Neovim for years, across multiple OSes, with experience in Python, Rust, Zig, JS/TS, React, Django, Flask, and more.

note: this is inspired by [ThePrimeagen - Neovim Setup Video](https://www.youtube.com/watch?v=w7i4amO_zaE)

---

## Features

- Fully configured **LSP** (Lua, Python, Rust, TypeScript, Tailwind, Zig, etc.)
- **Autocomplete** with `nvim-cmp` and `LuaSnip` integration
- **GitHub Copilot** via `copilot-lsp` for AI-assisted coding
- **File Explorer & Tree** (plugin-ready, can use `nvim-tree` or `neo-tree`)
- **Autopairs** for automatic bracket, quote, and brace closing
- **Harpoon** for quick file navigation
- **Zen Experience** with custom `zenmode`, `vimbegood`, and `trouble` setup
- **Tmux & Zsh integration** for terminal power users
- Fully keyboard-centric workflow with Vim keymaps
- Syntax highlighting, formatting, and linting via `treesitter` and `conform.nvim`

---

## Installation

### Requirements

- Neovim >= 0.8
- Git
- Node.js (for some LSPs and Copilot)
- Python (for Python LSP)
- Rust (for Rust LSP)
- Zig (if using Zig LSP)

### Clone Config

```bash
# Backup your current nvim config if needed
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this repo
git clone https://github.com/Abubakar785-ctrl/nvim-config.git ~/.config/nvim

# Open Neovim and let plugin manager install plugins
nvim
Updating Plugins
:Lazy sync
Included Plugins (Highlights)
nvim-lspconfig – LSP support

nvim-cmp – Autocomplete engine

LuaSnip – Snippets

nvim-autopairs – Auto-closing brackets and quotes

harpoon – Quick file navigation

telescope.nvim – Fuzzy finder

trouble.nvim – Diagnostics list

fidget.nvim – LSP progress UI

treesitter – Syntax highlighting

zenmode.nvim & vimbegood – Distraction-free coding
