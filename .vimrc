call plug#begin('~/.vim/plugged')

" Linting
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
" Directory listing
Plug 'scrooloose/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Add, remove, or replace surrounding pairs around a word
Plug 'tpope/vim-surround'
" Emmet support
Plug 'mattn/emmet-vim'
" Opening and closing tag highlighting
Plug 'gregsexton/MatchTag'
" Automatic closing of quotes, paranthesis, brackets, etc
Plug 'Raimondi/delimitMate'
"Lens + Animate
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
" Vertical lines for indent levels
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
" Distraction-less vim
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" ctrl + / like commenting from IDE's
Plug 'preservim/nerdcommenter'
" CSS color
Plug 'ap/vim-css-color'
" Easy Motion
Plug 'easymotion/vim-easymotion'
" Synatax highlighting
Plug 'sheerun/vim-polyglot'

call plug#end()            

"*************************"
	"Plugin configurations"
"*************************"

" Autostart NerdTree when creating new file and focus on file instead of
" NERDTree
autocmd VimEnter * NERDTree | wincmd p 
" Closes vim if the only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree window starting size
let g:NERDTreeWinSize=25

" Set indent char 
let g:indentLine_char = '|'

colo elflord
syntax on



" Line numbers
set number

" allow clipboard
set clipboard=unnamed

" Mouse emulation within vim 
set mouse=a

" Tabbing options
set sw=4 ts=4 sts=4 sta et

" Cursor jumps to the matching brace when inserted
set showmatch

" Sets the cursor to a line on insert
let &t_SI = "\e[6 q"
let &t_SI = "\e[2 q"

" Maintains VisualMode after indenting with < or >
vmap < <gv
vmap > >gv

" Set leader key
let mapleader=";"
set timeoutlen=2000

" Yank to system clipboard
nnoremap <leader>y :"+y
nnoremap <leader>w :w <Return>
nnoremap <leader>q :q <Return>
nnoremap <leader>wq :x <Return>
" cd to file's current directory 
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" save file with admin rights
noremap <leader>W :w !sudo tee % > /dev/null 
" Plugin leader keys
nmap <Leader>py <Plug>(Prettier)
" hjkl motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
" keep cursor column when JK motion
let g:EasyMotion_startofline = 0 

" vim-Terminal configuration
set termwinsize=30*0 splitbelow
" New split panes start at the bottom and to the right.
set sb spr

set encoding=utf-8
" Back up directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

