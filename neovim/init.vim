filetype plugin indent on

" PLUGINS <(
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }        " deoplate autocomplete
    let g:deoplete#enable_at_startup = 1
    let g:python3_host_prog = '/home/welldone/.pyenv/versions/neovim/bin/python'
Plug 'zchee/deoplete-jedi'                                           " python autocomplete
    let g:deoplete#sources#jedi#show_docstring = 1
Plug 'christoomey/vim-tmux-navigator'                                " smart tmux-vim panes navigation
Plug 'scrooloose/nerdcommenter'                                      " improved comments
    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCommentEmptyLines = 1
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDToggleCheckAllLines = 1


call plug#end()
" )>

" COLORS <(
highlight ColorColumn ctermbg=0

" )>

" VARIABLE SETTINGS <(
let mapleader = " "
set fileencodings=utf-8
set mouse=a
syntax on
set hlsearch
set nocompatible                                                     " use vim setting instead of vi 
set backspace=indent,eol,start                                       " allow backspacing over everything in insert mode 
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//
set history=50                                                       " keep 50 lines of command line history
set ruler                                                            " show the cursor position all the time
set incsearch                                                        " do incremental searching
set wildmenu                                                         " set autocomplete in commad line more cool
set nowrap                                                           " remove automatic return at the end of the line
set nolinebreak                                                      " linebreak don't break the word when automaticaly go to new line
set list                                                             " show invisible charachter
set listchars=tab:▸\                                                 " set character for tab and enter
set ts=4 sts=4 sw=4 expandtab                                        " set number of space for tab
set hidden                                                           " allow changing buffer without saveing
set foldmethod=marker                                                " set something at the begin and end of fold
set foldmarker=<(,)>                            
set splitbelow                                                       " split below 
set splitright                                                       " split on the right side
set colorcolumn=80                                                   " color column 80

" )>

" KEY MAPPING <(

" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>i
noremap <leader>r :call DeleteLastSearch()<CR>
noremap <leader>o :only<CR>
nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
vnoremap < <gv
vnoremap > >gv
command! Q q
command! W w
command! WQ wq
imap kj <Esc>


" )>

" CUSTOM FUNCTION <(

function! DeleteLastSearch()
	let @/=''
endfunction
")>

