# My config for Nvim with COC Metals

## Setup
- Install Neovim
- Then extract this repo into the config directory
- `'~/.config/nvim/data'` edit this value in init.vim to point at a directory where you want the plugin files to be installed
- The setup uses Vim Plug so you will need to run :PlugInstall command from within nvim 

# Integrations
Here are the plugins I have integrated you may want to remove the ones you don't want:
- NerdTree A nicer explorer (https://github.com/preservim/nerdtree)
- Onedark Theme (https://github.com/joshdick/onedark.vim)
- Wakatime (https://wakatime.com)
- vim-fugitive (Git integration
- vim-airline A cool status line (https://github.com/vim-airline/vim-airline)
- coc metals (https://github.com/scalameta/coc-metals)
- Language Server Protocol integration for Haskell

```
call plug#begin('~/.config/nvim/data')
 Plug 'preservim/nerdtree'
 Plug 'joshdick/onedark.vim'
 Plug 'wakatime/vim-wakatime'
 Plug 'tpope/vim-fugitive'
 "Plug 'Yggdroot/indentLine'
 Plug 'vim-airline/vim-airline'
 
  Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh'
     \ }
" Plug 'puremourning/vimspector'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
 Plug 'ryanoasis/vim-devicons'
 Plug 'rust-lang/rust.vim'
call plug#end()
```


Let me know if you find any errors
