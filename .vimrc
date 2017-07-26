execute pathogen#infect()
execute pathogen#helptags()

set nocompatible "ensures vim over vi

set mouse=a

set tags=.tags "destination for ctags

set backspace=indent,eol,start

" yank to clipboard
if has("clipboard")
set clipboard=unnamed " copy to the system clipboard
 if has("unnamedplus") " X11 support
     set clipboard+=unnamedplus
 endif
endif

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Syntax highlighting on (required for pathogen installed plugins to work)
syntax enable 
" Show number lines in files, and set their color to grey
set number
highlight LineNr ctermfg=grey
" Don't wrap lines
set wrap!
" Ignore upper/lowercase in searches
set ignorecase 
" Highlight dynamically as pattern is typed
set incsearch
" Global tabstop options
set tabstop=4
set shiftwidth=4
set expandtab 
set hlsearch
" set autoindent
"
"for synctastic https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint', 'python']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compile_options = "-std=c++11 -Wall -Wextra -Wpedantic"

" vim-indent-guides options:
" https://github.com/nathanaelkane/vim-indent-guides
" let g:indent_guides_auto_colors = 1
colorscheme default
set background=dark
let g:indent_guides_guide_size = 1 
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_soft_pattern = ' '

" Load the appropriate plugin depending on filetype
filetype plugin indent on

"commenting blocks of code.
"insert and remove comments in visual and normal mode
"Need to update this for each filetype
vmap ,ic :s/^/\/\//g<CR>:let @/ = ""<CR>
map  ,ic :s/^/\/\//g<CR>:let @/ = ""<CR>
vmap ,rc :s/^\/\///g<CR>:let @/ = ""<CR>
map  ,rc :s/^\/\///g<CR>:let @/ = ""<CR>

map ,pj :%!python -m json.tool
vmap ,pj :%!python -m json.tool

" always delete/visualize/yank whole words, not starting from cursor
map dw diw
map vw viw
map yw yiw



