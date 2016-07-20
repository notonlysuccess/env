syntax enable
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
" Comment. usage:<leader>c<space>=toggle
Bundle 'scrooloose/nerdcommenter'
" let g:NERDSpaceDelims=1
" Quick HTML tags. Ctrl+y+<leader>
Bundle 'mattn/emmet-vim'
let g:user_emmet_expandabbr_key = '<C-E>'

" Nerd tree.
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" Markdown syntax highlighting.
Bundle 'plasticboy/vim-markdown'
" Vim colors.
Bundle 'altercation/vim-colors-solarized'
Bundle 'sickill/vim-monokai'
" Doc generator. :DoxLic :DocAuthor :Dox
Bundle 'vim-scripts/DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns "
let g:DoxygenToolkit_authorName="hulkhu"

" Parenthesis match.
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Auto complete word.
Bundle 'ervandew/supertab'

" Quick jump. usage:,,w ,,b ,,s
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
" HTML5 + inline SVG omnicomplete function, indent ans syntax for Vim.
Bundle 'othree/html5.vim'
" Parenthesis auto complete.
Bundle 'Raimondi/delimitMate'

" Files jump.
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)$'

" Powerful state line.
Bundle 'vim-airline/vim-airline'
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
Bundle 'ternjs/tern_for_vim'


" markdown table
Bundle 'dhruvasagar/vim-table-mode'
inoreabbrev <expr> <bar><bar>
      \ s:isAtStartOfLine('\|\|') ?
      \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
      \ s:isAtStartOfLine('__') ?
      \ '<c-o>:silent! TableModeDisable<cr>' : '__'

fun! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endf

Bundle 'rizzatti/dash.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'chilicuil/vim-sml-coursera'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'mxw/vim-jsx'

" Record last edit position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set softtabstop=2
set shiftwidth=2
set autoindent
set rnu
set mousehide
set encoding=utf-8
set ts=2
set expandtab
set cindent
set wrap
set pastetoggle=<F2>
set hlsearch
set incsearch
" Folding
" set foldmethod=syntax

filetype plugin indent on

if has("autocmd")
    autocmd FileType javascript setlocal ts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sw=2 expandtab
    autocmd FileType ruby setlocal ts=2 sw=2 expandtab
    autocmd FileType r setlocal ts=2 sw=2 expandtab
end


"快速编译C程序
map<F5> :call Compile()<CR>
func! Compile()
    if &filetype == 'c'
        exec "w"
        exec "! clear;
        \echo 正在编译: ./% ...;
        \echo ;
        \gcc % -g -o %<.o;
        \echo ;
        \echo 编译完成;"
    endif
endfunc

"按Ctrl－F5 调试当前文件
map <C-F5> :call Debug()<CR>

func! Debug()
    if &filetype == 'c'
        exec "w"
        exec "! clear;
        \ echo 正在编译: ./% ...;
        \ echo ;
        \ gcc % -g -o %<.o;
        \ echo ;
        \ echo 编译完成,开始调试;
        \ gdb %<.o;"
    endif
endfunc

"按F6 执行
map <F6> :call Run()<CR>
func! Run()
if &filetype == 'c'
exec "! clear;
\ ./%<.o;"
endif
endfunc

"插入指定文件
map <F7> :call InsertFile()<CR>
func! InsertFile()
exec "r your_file_path;"
endfunc
let mapleader=","

let g:use_zen_expandabbr_key = '<c-y>'

function! AutoPair(open, close)
    let line = getline('.')
    if col('.') > strlen(line) || line[col('.') - 1] == ' '
        return a:open.a:close."\<ESC>i"
    else
        return a:open
    endif
endf
                    
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" Theme
set background=dark
colorscheme desert

" Highlight current line
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white

" Highlight the 81th column
" set cc=81

let g:jsx_ext_required = 0

" Move between files.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use mouse.
set mouse=a

" Copy to clipboard.
vnoremap <C-c> :w !pbcopy <CR><CR>

" Paste without indent.
" set paste

"设置ctags的快捷键为 Ctrl-F12  
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>    
   
" Map ✠ (U+2720) to <Esc> as <S-CR> is mapped to ✠ in iTerm2.
nmap ✠ i<CR><Esc>
  
nmap <S-Tab> i<Tab><Down><Left><Esc>
imap <S-Tab> <Tab><Down><Left><Left>



" Jump between <div> and </div>.
runtime macros/matchit.vim 
filetype plugin on 
