
" list of connected plugins
" directory is the place for plug files
call plug#begin('~/.vim/plugged')

"Plug 'neoclide/coc.nvim', {'branch': 'release'} " connect coc.vim - autocomplete plugin and manager
"Plug 'tpope/vim-fugitive'                       " git helper + branch display bottom left
"Plug 'jreybert/vimagit'                         " git manager
" Plug 'ycm-core/YouCompleteMe'                    " autocomplete plugin
Plug 'vim-airline/vim-airline'                   " nice bar in the bottom of vim (infobar)
Plug 'tpope/vim-surround'                        " for surround in LaTeX or HTML
Plug 'tpope/vim-commentary'                      " for fast commentary
" Plug 'puremourning/vimspector'                   " debugger
" Plug 'lervag/vimtex'



" Add schemes
"Plug 'vim-airline/vim-airline-themes' " a lot of infobar themes
Plug 'morhetz/gruvbox'                " gruvbox theme for vim and infobar

call plug#end() " mark end of plug config


"------------ Settings for plugins ------------ 

" colorscheme settings
let g:airline_powerline_fonts = 1       " support external fonts for markers and signs
let g:airline_stl_path_style = 'short' 	" short path in botton left so it doesn't 
                                        " take the whole width of the screen

set bg=dark        " set bg as dark for themes that have color variations (e.g. dark/light)
set showtabline=2  " always display filename header
set laststatus=2   " always display info around (infobar,filename,etc.)

colorscheme gruvbox                   " set vim colorscheme
let g:airline_theme = 'gruvbox'       " set infobar theme
let g:gruvbox_contrast_dark = "hard"  " set gruvbox contrast


" settings for YouCompleteMe plugin
" set completeopt-=preview
" let g:ycm_add_preview_to_completeopt = 0



" settings for vimspector
" settings for debugger
" let g:vimspector_enable_mappings = 'HUMAN'


" settings for vimtex
" filetype plugin indent on
" syntax enable
" let g:vimtex_view_method='zathura'
" let g:vimtex_compiler_method = 'tectonic'
" let g:tex_flavor='latex'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1
" let g:tex_conceal='abdmg'
