noremap ; l
noremap l k
noremap k j
noremap j h

call plug#begin('~/.config/nvim/minimal-data')

Plug 'joshdick/onedark.vim'
"Plug 'wakatime/vim-wakatime'
"Plug 'tpope/vim-fugitive'
"Plug 'Yggdroot/indentLine'

"Plug 'puremourning/vimspector'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

au BufRead,BufNewFile *.sbt set filetype=scala

" Load the mappings file
" coc.nvim lsp mappings
if filereadable(expand("./coc-mappings.vim"))
  source ./coc-mappings.vim
endif

colorscheme onedark

" Because no one likes to be blinded by awful colors
hi CocErrorSign guifg=#E06C75
hi CocWarningSign guifg=#E5C07B
hi StatusLineStatus guifg=#4B5263 guibg=#2C323C
hi StatusLineError guifg=#E06C75 guibg=#2C323C
hi StatusLineWarning guifg=#E5C07B guibg=#2C323C

set statusline=%n\   " buffer number
set statusline+=%t\ %M%r%h%w\  " file modified, readonly, help, preview
set statusline+=%#StatusLineError#%{CocMinimalErrors()}\ " coc-errors
set statusline+=%#StatusLineWarning#%{CocMinimalWarnings()}\ " coc-warnings
set statusline+=%#StatusLineStatus#%{CocMinimalStatus()}%#StatusLine#\ " coc status 
set statusline+=%=%Y\  " filetype
set statusline+=%{&ff}\  " right align line endings
set statusline+=%l,%v\ " curser position
set statusline+=%p%%\  " percentage on page


