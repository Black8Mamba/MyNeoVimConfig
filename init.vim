" __  __       _   _         __     ___           
"|  \/  |_   _| \ | | ___  __\ \   / (_)_ __ ___  
"| |\/| | | | |  \| |/ _ \/ _ \ \ / /| | '_ ` _ \ 
"| |  | | |_| | |\  |  __/ (_) \ V / | | | | | | |
"|_|  |_|\__, |_| \_|\___|\___/ \_/  |_|_| |_| |_|
"        |___/                                    
"
"     _ ___   __                    _ _
"    | (_) \ / /__  _ __   __ _    | (_) ___
" _  | | |\ V / _ \| '_ \ / _` |_  | | |/ _ \
"| |_| | | | | (_) | | | | (_| | |_| | |  __/
" \___/|_| |_|\___/|_| |_|\__, |\___/|_|\___|
"                         |___/


let mapleader = "\<SPACE>" " defualt ,
syntax on
set number
set relativenumber
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set tw=0
set indentexpr=
set backspace=indent,eol,start
set nocompatible
set ignorecase
set smartcase
set notimeout
"set mouse=a
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set laststatus=2
set autochdir
set scrolloff=5
set clipboard+=unnamedplus
set clipboard+=unnamed
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
noremap j h
noremap i k
noremap k j
noremap h i

"inoremap <C-h> <Left>
"inoremap <C-k> <Down>
"inoremap <C-j> <Up>
"inoremap <C-l> <Right>


nnoremap  0 $
nnoremap  9 0

inoremap <C-a> <ESC>A
"map S :w<CR>
"map Q :q<CR>

noremap <LEADER><CR> :nohlsearch<CR>

nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sj :set nosplitright<CR>:vsplit<CR>
nnoremap si :set nosplitbelow<CR>:split<CR>
nnoremap sk :set splitbelow<CR>:split<CR>
nnoremap <LEADER>l <C-w>l
nnoremap <LEADER>j <C-w>h
nnoremap <LEADER>i <C-w>k
nnoremap <LEADER>k <C-w>j
nnoremap <LEADER><up> :res +5<CR>
nnoremap <LEADER><down> :res -5<CR>
nnoremap <LEADER><left> :vertical resize-5<CR>
nnoremap <LEADER><right> :vertical resize+5<CR>
noremap tu :tabe<CR>
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap jj <Esc>
vnoremap jj <Esc>

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  :exe '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =======================
" ===  plugins  begin ===
" =======================
call plug#begin('~/.config/nvim/plugged')

    " file explorer
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " highlight
    "Plug 'cateduo/vsdark.nvim'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    "Plug 'crusoexia/vim-monokai'

    Plug 'easymotion/vim-easymotion'
    "ale
    Plug 'dense-analysis/ale'
    " lsp
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "vim-airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'luochen1990/rainbow'
    Plug '907th/vim-auto-save'
    Plug 'brooth/far.vim'
    Plug 'mbbill/undotree'

    Plug 'skywind3000/vim-preview'

    "Plug 'connorholyday/vim-snazzy'
    Plug 'Yggdroot/indentLine'

    Plug 'preservim/tagbar'

    Plug 'mhinz/vim-startify'
    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
    Plug 'skywind3000/vim-terminal-help'
    "Plug 'flaz/vim-colorschemes'
    Plug 'junegunn/fzf'
    " Git
    Plug 'rhysd/conflict-marker.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify'
    Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
    Plug 'scrooloose/nerdcommenter' " in <space>ci to comment a line
    Plug  'f-person/git-blame.nvim'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'gcmt/wildfire.vim'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'tpope/vim-surround'
    Plug 'machakann/vim-highlightedyank'
call plug#end()
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


"vim-highlightedyank
let g:highlightedyank_highlight_duration = 300
"indentline
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

"easymotion
"map <Leader> <Plug>(easymotion-prefix)
"map  / <Plug>(easymotion-sn)
"map  n <Plug>(easymotion-next
"map  N <Plug>(easymotion-prev))
" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)

"git blame
let g:gitblame_enabled = 1
let g:gitblame_message_template = '<summary> • <date> • <author>'

"==== cateduo/vsdark.nvim ====
set termguicolors
"let g:vsdark_style = "dark"
" Enable transparent background.
"let g:vscode_transparency = 1
" Enable italic comment
"let g:vscode_italic_comment = 1
"colorscheme vscode
"colorscheme vsdark
"color monokai
color wombat

"octol/vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1

"vim-signify
set updatetime=100
set signcolumn=yes

"tagbar
nnoremap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " 设置ctags所在路径
"let g:tagbar_width=30　"
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

"gtags 设置项
set cscopetag " 使用 cscope 作为 tags 命令
nnoremap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>

"set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopeprg='gtags-cscope' " 使用 gtags-cscope 代替 cscope
let g:gutentags_define_advanced_commands = 1
set cscoperelative
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

"undotree
nnoremap <LEADER>q :UndotreeToggle<CR>

" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" ==== preservim/nerdtree ====

nnoremap <LEADER>e :NERDTreeToggle<CR>
nnoremap <LEADER>w :NERDTreeFocus<CR>
"let g:NERDTreeIndicatorMapCustom = {
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ==== jackguo380/vim-lsp-cxx-highlight ====

hi default link LspCxxHlSymFunction cxxFunction
hi default link LspCxxHlSymFunctionParameter cxxParameter
hi default link LspCxxHlSymFileVariableStatic cxxFileVariableStatic
hi default link LspCxxHlSymStruct cxxStruct
hi default link LspCxxHlSymStructField cxxStructField
hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
hi default link LspCxxHlSymClassField cxxStructField
hi default link LspCxxHlSymEnum cxxEnum
hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
hi default link LspCxxHlSymVariable cxxVariable
hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
hi default link LspCxxHlSymClassField cxxStructField
hi default link LspCxxHlSymEnum cxxEnum
hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
hi default link LspCxxHlSymVariable cxxVariable
hi default link LspCxxHlSymMacro cxxMacro
hi default link LspCxxHlSymEnumMember cxxEnumMember
hi default link LspCxxHlSymParameter cxxParameter
hi default link LspCxxHlSymClass cxxTypeAlias

"auto_save
"let g:auto_save = 1  " enable AutoSave on Vim startup
"let g:auto_save_events = ["InsertLeave", "TextChanged"]


"airline
let g:airline#extensions#tabline#enabled=1 "顶部tab显示"
nmap <tab> :bn<cr> "设置tab键映射"
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_powerline_fonts = 1

"ctasg
set tags=./tags;,tags
"set tags=tags;
set autochdir

"LeaderF
let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_WindowPosition='right'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ReverseOrder = 1
"nmap <LEADER>lf :LeaderfFile<CR>
nmap <LEADER>lf :LeaderfFunction!<CR>
nmap <LEADER>lb :LeaderfBuffer<CR>
nmap <LEADER>lg :Leaderf rg<CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
set ambiwidth=double

"let g:Lf_ShortB = '<m-n>'
let g:Lf_RootMarkers = ['.git']
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'vendor', 'node_modules'],
        \ 'file': ['__vim_project_root', 'class']
        \}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0
"let g:Lf_GtagsAutoGenerate = 1

""airline theme
"let g:airline_theme='moloai'  " murmur配色也不错
"let g:airline_theme='murmur'
let g:airline_theme='bubblegum'
"coc extensions

"vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

"coc-begin
"CocInstall coc-marketplace  CocList marketplace
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-highlight',
      \ 'coc-pyright',
      \ 'coc-clangd',
      \ 'coc-pairs',
      \ ]

set hidden
set updatetime=100
set shortmess+=c

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

set signcolumn=number
" <TAB> to select candidate forward or
" pump completion candidate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" <s-TAB> to select candidate backward
inoremap <expr><s-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.')-1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()

" <CR> to comfirm selected candidate
" only when there's selected complete item
if exists('*complete_info')
  inoremap <silent><expr> <CR> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if(index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" highlight link CocHighlightText Visual
" autocmd CursorHold * silent call CocActionAsync('highlight')   " TODO

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" diagnostic info
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<CR>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" statusline support
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}  "TODO

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

function! s:generate_compile_commands()
  if empty(glob('CMakeLists.txt'))
    echo "Can't find CMakeLists.txt"
    return
  endif
  if empty(glob('.vscode'))
    execute 'silent !mkdir .vscode'
  endif
  execute '!cmake -DCMAKE_BUILD_TYPE=debug
      \ -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B .vscode'
endfunction
command! -nargs=0 Gcmake :call s:generate_compile_commands()

"end coc extensions

