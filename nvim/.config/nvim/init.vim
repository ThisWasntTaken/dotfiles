call plug#begin('~/.local/share/nvim/plugged')

" Vim Airline for Style
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto Pairs for easy bracket manipulation
Plug 'jiangmiao/auto-pairs'

" Gruvbox for Colorscheme
Plug 'morhetz/gruvbox'

" Polyglot for Language highlighting support
Plug 'sheerun/vim-polyglot'

" Vim-Latex-Live-Preview for live preview of TeX documents
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" Use Powerline Patched Fonts
let g:airline_powerline_fonts = 1

" Set the Vim Airline Theme
let g:airline_theme = 'gruvbox'

" Set the Colorscheme
colorscheme gruvbox

" Do not show the Mode 
set noshowmode

" Do not change cursor style
set guicursor =

" Set live preview pdf reader
let g:livepreview_previewer = 'zathura'

" Enable Mouse Scrolling
set mouse=a
