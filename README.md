# Dotfile Management
Management for my configs for nvim and tmux

## Programs
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md) (v. 0.9.4 or greater): A modern version of vim that allows for
scripting through lua. I've used Kickstart as a baseline with some changes, but might start over from fresh.
- [ripgrep](https://github.com/BurntSushi/ripgrep): Necessary for Kickstart with nvim.
- [fzf](https://github.com/junegunn/fzf) (v. 0.48.0 or greater): A fuzzy finder tool that integrates well with nvim. I primarily
use it for its reverse search functionality.
- [zoxide](https://github.com/ajeetdsouza/zoxide): A program which remembers commonly used directories and
allows you to jump between them without using the full path.
- [tmux](https://github.com/tmux/tmux/wiki): A terminal multiplexer.

## Changes
Not all changes are described, just what I consider the biggest ones. If you want a comprehensive list of
changes, check the respective program's config file.

### Tmux
- Prefix key changed to `C-space`.
- Vim style movement so `H`, `I`, `K`, `L` moves pane in the respective direction.
- 'C-v' splits window into pane in the same way `:vsp` does in vim.
- 'C-h' splits window into pane in the same way `:sp` does in vim.
- Vim style movement so `M-H, M-I, M-K, M-L` resizes the window in the respective direction.
- If making a pane while ssh'd the pane starts in the server.
- 'C-n' and 'C-p' goes to next and previous windows.
- Start windows at 1.
- ssh'ing into a server changes the name of the pane.
- Nice little powerline at the bottom.

### nvim
- See the [Kickstart](https://github.com/nvim-lua/kickstart.nvim) page and [ThePrimeagen's](https://github.com/ThePrimeagen)
github to see the major differences between the baseline setup and my setup.
- `<Leader>` set to `<Space>`
- `<Leader>cd` opens directory
- `<Leader><Space>` opens buffers.
- `<Leader>o` and`<Leader>O` act similarly to `o` and `O` but don't go into insert mode.
- Autofill options can be selected with `J` and `K`.
- Autofill is selected with `<Tab>`.
- Reverse indenting can be done with `S-<Tab>`.


## To-do/wants
- Currently, smart vim/tmux pane switcher doesn't work while ssh'd onto a remote server. Need to fix. Currently using regular 
window switching in vim while on remote servers.
