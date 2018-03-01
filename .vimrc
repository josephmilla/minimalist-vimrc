set nocompatible        " use vim settings instead of vi

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null
colorscheme solarized   " colorscheme solarized 
filetype indent on      " activates indenting for files
syntax on               " syntax highlighting

set autoindent          " auto indenting
set autoread            " auto-reload files
set background=dark     " set dark background
set backspace=2         " backspace in insert mode works like normal editor
set clipboard=unnamed   " share clipboard to the OS
set copyindent          " copy the previous indentation on autoindenting
set cursorline          " underline the current line
set encoding=utf-8      " set encoding to utf-8
set expandtab           " expand tabs to spaces
set foldlevelstart=1    " make all folds open
set foldmethod=indent   " set the fold at every indent
set history=1000        " remember more history
set hlsearch            " highlight all search matches
set ignorecase          " ignores character case when searching
set incsearch           " highlight on the fly
set nobackup            " get rid of anoying ~file
set noerrorbells        " don't beep
set nomodeline          " disable mode lines (for security)
set noswapfile          " get rid of swap files
set nowrap              " lines shouldn't be wrapped
set number              " line numbers
set scrolloff=4         " keep 4 lines off the edge when scrolling
set shiftround          " use multiple of shiftwidth when indenting with '>' and '>'
set shiftwidth=4        " indent by 4 spaces when auto-indenting
set showmode            " show the current editing mode
set smartcase           " ignore  case is search patten is all lowercase, case-sensitive otherwise
set smarttab            " tab key (in insert mode) insert spaces or tabs to go to the next indent 
set softtabstop=4       " indents that consist of 4 space characters
set tabstop=4           " the width of a tab is set to 4
set termencoding=utf-8  " set terminal encoding to utf-8
set undolevels=1000     " use lots of undos
set visualbell          " don't beep
