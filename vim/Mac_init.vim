"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                                                "
"                                          .::::.                                                "
"                             ___________ :;;;;:`____________                                    "
"                             \_________/ ?????L \__________/                                    "
"                               |.....| ????????> :.......'                                      "
"                               |:::::| $$$$$$"`.:::::::' ,                                      "
"                              ,|:::::| $$$$"`.:::::::' .OOS.                                    "
"                            ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.                                  "
"                          .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.                                "
"                           'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`                                 "
"                             'D|IIIIII7IIIII7' .DDDDDDDDNNNF`                                   "
"                               |EEEEEEEEEE7' .DDDDDDDNNNNF`                                     "
"                               |EEEEEEEEZ' .DDDDDDDDNNNF`                                       "
"                               |888888Z' .DDDDDDDDNNNF`                                         "
"                               |8888Z' ,DDDDDDDNNNNF`                                           "
"                               |88Z'    "DNNNNNNN"                                              "
"                               '"'        "MMMM"                                                "
"                                            ""                                                  "
"                                                                                                "
"      ___    ____                                            __   _         _    ________  ___  "
"     /   |  / / /  __  ______  __  __   ____  ___  ___  ____/ /  (_)____   | |  / /  _/  |/  /  "
"    / /| | / / /  / / / / __ \/ / / /  / __ \/ _ \/ _ \/ __  /  / / ___/   | | / // // /|_/ /   "
"   / ___ |/ / /  / /_/ / /_/ / /_/ /  / / / /  __/  __/ /_/ /  / (__  )    | |/ // // /  / /    "
"  /_/  |_/_/_/   \__, /\____/\__,_/  /_/ /_/\___/\___/\__,_/  /_/____/     |___/___/_/  /_/     "
"                   /_/                                                                          "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

set nocompatible              " required
filetype on
filetype plugin on
filetype plugin indent on
" set hidden
set showtabline=1
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" set rtp+=~/.config/nvim/bundle/deoplete.nvim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'  " required
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"-------------------=== Code/Project navigation ===-------------
Plugin 'scrooloose/nerdtree'                " Project and file navigation
" Plugin 'Xuyuanp/nerdtree-git-plugin'        " NerdTree git functionality
Plugin 'majutsushi/tagbar'                  " Class/module browser
" Plugin 'roxma/nvim-completion-manager'
" Plugin 'vim-ctrlspace/vim-ctrlspace'        " Tabs/Buffers/Fuzzy/Workspaces/Bookmarks
" Plugin 'mileszs/ack.vim'                    " Ag/Grep
Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
" Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
" Plugin 'yuttie/comfortable-motion.vim'      " Smooth scrolling
" Plugin 'MattesGroeger/vim-bookmarks'        " Bookmarks
Plugin 'thaerkh/vim-indentguides'           " Visual representation of indents
" Plugin 'neomake/neomake'                    " Asynchronous Linting and Make Framework
" Plugin 'Shougo/deoplete.nvim'               " Asynchronous Completion
" Plugin 'roxma/nvim-yarp'                    " Deoplete Dependency #1
" Plugin 'roxma/vim-hug-neovim-rpc'           " Deoplete Dependency #2
" Plugin 'zchee/deoplete-jedi'                " deoplete.nvim source for Python
Plugin 'davidhalter/jedi-vim'               "python autocompletion
" Plugin 'ctrlpvim/ctrlp.vim'                 " Searching files  in the project
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-repeat'                   " Repeat combination of commands with dot(.)
Plugin 'tpope/vim-fugitive'                 " a Git wrapper so awesome
Plugin 'ludovicchabant/vim-gutentags'       
Plugin 'mattn/emmet-vim'                    " vim plug-in which provides support for expanding abbreviations similar to https://emmet.io/
" Plugin 'itchyny/lightline.vim'               "A light and configurable statusline/tabline plugin for Vim
"-------------------=== Other ===-------------------------------
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes
" Plugin 'vimwiki/vimwiki'                    " Personal Wiki
" Plugin 'jreybert/vimagit'                   " Git Operations
"
Plugin 'Raimondi/delimitMate'
" Plugin 'kien/rainbow_parentheses.vim'       " Rainbow Parentheses
" Plugin 'chriskempson/base16-vim'            " Base 16 colors
Plugin 'ryanoasis/vim-devicons'             " Dev Icons

"-------------------=== Snippets support ===--------------------
" Plugin 'garbas/vim-snipmate'                " Snippets manager
" Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
" Plugin 'tomtom/tlib_vim'                    " dependencies #2
" Plugin 'honza/vim-snippets'                 " snippets repo
" Plugin 'terryma/vim-multiple-cursors'
"-------------------=== Languages support ===-------------------
Plugin 'scrooloose/nerdcommenter'           " Easy code documentation
" Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'w0rp/ale'
Plugin 'jremmen/vim-ripgrep'

"-------------------=== Python  ===-----------------------------
" Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
" Plugin 'hynek/vim-python-pep8-indent'
" Plugin 'mitsuhiko/vim-python-combined'
" Plugin 'mitsuhiko/vim-jinja'
" Plugin 'jmcantrell/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"=====================================================
"" General settings
"=====================================================
set encoding=utf-8
set guifont=mononoki\ Nerd\ Font\ 18
colorscheme gruvbox
syntax enable                               " enable syntax highlighting

let g:loaded_python_provider = 1
set shell=/bin/bash
set ic                                      " Ignore case
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=20                            " let 10 lines before/after cursor during scroll

set clipboard+=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

set history=700
set undolevels=700
set nofoldenable
set autochdir
set colorcolumn=120

"=====================================================
"" Tabs / Buffers settings
"=====================================================
" tab sball
set switchbuf=useopen
set laststatus=2
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"=====================================================
"" Neomake Settings
"=====================================================
" call neomake#configure#automake('w')
" let g:neomake_open_list = 2

"=====================================================
"" Deoplete  Settings
"=====================================================
" Use deoplete.
set runtimepath+=~/.vim/bundle/deoplete.nvim/plugin/deoplete.vim
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" disable autocomplete by default
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1
"----------------------------------------------------------
" Neovim's Python provider
"----------------------------------------------------------
let g:python_host_prog  = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.7' " For Mac
" let g:python3_host_prog = '/usr/bin/python3' " For Ubuntu


"=====================================================
"" Relative Numbering
"=====================================================
nnoremap <F4> :set relativenumber!<CR>

"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" Comfortable Motion Settings
"=====================================================
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 25  " Feel free to increase/decrease this value.
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

"=====================================================
"" AirLine settings
"=====================================================
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
" Below mentioned commands is making toggle of tagbar fail as type of file is
" *.py and its keep on opening it again and again even after toogle
" autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose
nmap <F8> :TagbarToggle<CR>

"=====================================================
"" NERDTree settings
"=====================================================
"Below list has used to ignore the type of file we want NerdTress to display
" Ignore files in NERDTree
let NERDTreeIgnore = ['\.pyc$','\.png$','\.pyo$','__pycache__$','\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$','\.exe$','\.com$','\.dmg$']
let NERDTreeWinSize=35
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
let g:nerdtree_tabs_open_on_console_startup=0
map <C-n> :NERDTreeToggle<CR>

"=====================================================
"" NERDComment Settings
"=====================================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"=====================================================
"" DevIcon Settings
"=====================================================
" loading the plugin
let g:webdevicons_enable = 1

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0


"=====================================================
"" SnipMate settings
"=====================================================
" let g:snippets_dir='~/.vim/vim-snippets/snippets'

"=====================================================
"" Rainbow Parentheses Autoload 
"=====================================================
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"=====================================================
"" Indent Guides Settings 
"=====================================================
set listchars=tab:▸\ ,eol:¬,trail:•,extends:#,nbsp:.
"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins
" For Python 2
" let g:pymode_python='python'
" For Python 3
" let g:pymode_python='python3'
" let g:pymode_options_max_line_length = 120
" let g:autopep8_max_line_length=120

" rope
" let g:pymode_rope=0
" let g:pymode_rope_completion=0
" let g:pymode_rope_complete_on_dot=0
" let g:pymode_rope_auto_project=0
" let g:pymode_rope_enable_autoimport=0
" let g:pymode_rope_autoimport_generate=0
" let g:pymode_rope_guess_project=0

" documentation
" let g:pymode_doc=0
" let g:pymode_doc_bind='K'

" lints
" let g:pymode_lint=1
" let g:pymode_lint_unmodified = 1
" let g:pymode_lint_message = 1
" let g:pymode_lint_cwindow = 1
" let g:pymode_lint_checkers = ['pyflakes', 'pep8']
" let g:pymode_lint_ignore = ['E501', 'W']
" virtualenv
" let g:pymode_virtualenv=1
"
" " breakpoints
" let g:pymode_breakpoint=1
" let g:pymode_breakpoint_cmd = 'import pudb; pudb.set_trace()  # SJ BREAKPOINT'
" let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
" let g:pymode_syntax=1
" let g:pymode_syntax_slow_sync=1
" let g:pymode_syntax_all=1
" let g:pymode_syntax_print_as_function=g:pymode_syntax_all
" let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
" let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
" let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
" let g:pymode_syntax_highlight_self=g:pymode_syntax_all
" let g:pymode_syntax_indent_errors=g:pymode_syntax_all
" let g:pymode_syntax_string_formatting=g:pymode_syntax_all
" let g:pymode_syntax_space_errors=g:pymode_syntax_all
" let g:pymode_syntax_string_format=g:pymode_syntax_all
" let g:pymode_syntax_string_templates=g:pymode_syntax_all
" let g:pymode_syntax_doctests=g:pymode_syntax_all
" let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
" let g:pymode_syntax_builtin_types=g:pymode_syntax_all
" let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
" let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 120 symbols) in python files
" augroup vimrc_autocmds
"     autocmd!
"     autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
"     autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
"     autocmd FileType python,rst,c,cpp set nowrap
"     autocmd FileType python,rst,c,cpp set colorcolumn=120
" augroup END

" code folding
" let g:pymode_folding=0

" pep8 indents
" let g:pymode_indent=1

" code running
" let g:pymode_run=1
" let g:pymode_run_bind='<F5>'

" Check Python files with flake8 and pylint.
" Fix Python files with autopep8 and yapf.

let g:ale_enabled = 0
let g:ale_pattern_options = {
\ '\.py$': {'ale_linters': ['pep8', 'flake8', 'pylint'], 'ale_fixers': ['autopep8']},
\}
let g:ale_sign_column_always = 0
let g:ale_emit_conflict_warnings = 0                                                                         
let g:airline#extensions#ale#enabled = 1
" let g:pymode_rope_lookup_project = 0
let g:airline#extensions#tabline#enabled = 1

" imap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Below Mentioned commands will disable the Arrow keys
" in read mode, insert mode and visual mode
    " no <down> <Nop>
    " no <left> <Nop>
    " no <right> <Nop>
    " no <up> <Nop>
    "
    " ino <down> <Nop>
    " ino <left> <Nop>
    " ino <right> <Nop>
    " ino <up> <Nop>
    "
    " vno <down> <Nop>
    " vno <left> <Nop>
    " vno <right> <Nop>
    " vno <up> <Nop>
" =========================================================


" My Old Setting rearrange them as per sections above
" ++++++++++++++++++++++++++++++++++++++++++++++++++
" Default Key Mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle display hidden chars
nnoremap <leader>l :set list!<CR>
" Turn off highlighting after a search
nnoremap <leader>h :noh<CR>
" Copy absolute path  with filename
nnoremap <leader>cp :let @"=expand("%:p")<CR>
" Copy Only Filename (foo.txt)
nnoremap <leader>cf :let @"=expand("%:t")<CR>
" Copy only the directory of the file
nnoremap <leader>cd :let @"=expand("%:p:h")<CR>

" FZF Plugin metting
nnoremap <C-p> :GitFiles<CR>

" Control p Plugin Setting
" =========================
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
"
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"     \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"     \ 'file': '\v\.(exe|so|dll)$',
"     \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"     \ }
" let g:ctrlp_working_path_mode = 'ra'

" Uncomment below lines to debug deoplete plugin
" let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
" let $NVIM_PYTHON_LOG_LEVEL="DEBUG"
" Count number of matches of a pattern
map ,* *<C-O>:%s///gn<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "/!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)