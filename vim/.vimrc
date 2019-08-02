" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim
set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim
set number
set autoindent
set laststatus=2
syntax enable
set t_Co=256
colors zenburn 
syntax on

" Keybindings to switch between tabs easily.
map <C-n> :tabn<CR>
map <C-b> :tabp<CR>

" Automatically closing braces
" inoremap {<CR> {<CR>}<Esc>ko
" inoremap { {}<Esc>i
" inoremap ( ()<Esc>i
" inoremap (<CR> (<CR>)<Esc>ko
" inoremap [<CR> [<CR>]<Esc>ko
" inoremap [ []<Esc>i

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:livepreview_previewer = 'zathura'
