set nocompatible                " use vim settings instead of vi

" sudo to write
command W :execute ':silent w !sudo tee % > /dev/null' | :edit! 
colorscheme desert              " colorscheme desert 
filetype indent on              " activates indenting for files
syntax on                       " syntax highlighting

set autoindent                  " auto indenting
set autoread                    " auto-reload files
set background=dark             " set dark background
set backspace=2                 " backspace in insert mode works like normal editor
set clipboard=unnamed           " share clipboard to the OS
set copyindent                  " copy the previous indentation on auto-indenting
set cursorline                  " underline the current line
set encoding=utf-8              " set encoding to utf-8
set expandtab                   " expand tabs to spaces
set foldlevelstart=1            " make all folds open
set foldmethod=indent           " set the fold at every indent
set history=1000                " remember more history
set hlsearch                    " highlight all search matches
set ignorecase                  " ignores character case when searching
set incsearch                   " highlight on the fly
set linespace=0                 " no extra spaces between rows
set nobackup                    " get rid of annoying ~file
set noerrorbells                " don't beep
set nomodeline                  " disable mode lines (for security)
set noswapfile                  " get rid of swap files
set nowrap                      " lines shouldn't be wrapped
set number                      " line numbers
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " keep 3 lines off the edge when scrolling
set shiftround                  " use multiple of shiftwidth when indenting with '>' and '>'
set shiftwidth=4                " indent by 4 spaces when auto-indenting
set showmatch                   " show matching brackets/parenthesis
set showmode                    " show the current editing mode
set smartcase                   " ignore  case is search patten is all lowercase, case-sensitive otherwise
set smarttab                    " tab key (in insert mode) insert spaces or tabs to go to the next indent 
set softtabstop=4               " indents that consist of 4 space characters
set spell                       " spell checking on
set splitbelow                  " puts new split windows to the bottom of the current
set splitright                  " puts new vsplit windows to the right of the current
set tabstop=4                   " the width of a tab is set to 4
set termencoding=utf-8          " set terminal encoding to utf-8
set undolevels=1000             " use lots of undos
set visualbell                  " don't beep

" better unix / windows compatibility
set viewoptions=folds,options,cursor,unix,slash 

" don't mess with the current buffer on new operation
nnoremap <leader>d "_d
nnoremap <leader>dd "_dd
nnoremap <leader>c "_c
nnoremap <leader>cc "_cc
nnoremap x "_x

" explicit filetype detection
if exists('did_load_filetypes')
    finish
endif

augroup filetypedetect
    autocmd BufRead,BufNewFile *.py setfiletype python
    autocmd BufRead,BufNewFile *.rb setfiletype ruby
augroup END

if &filetype== 'python'
    set scrolloff=2             " keep 2 lines off the edge when scrolling
    set shiftwidth=2            " indent by 2 spaces when auto-indenting
    set softtabstop=2           " indents that consist of 2 space characters
    set tabstop=2               " the width of a tab is set to 2
endif

if &filetype == 'ruby'
    set scrolloff=4             " keep 4 lines off the edge when scrolling
    set shiftwidth=4            " indent by 4 spaces when auto-indenting
    set softtabstop=4           " indents that consist of 4 space characters
    set tabstop=4               " the width of a tab is set to 4
endif

