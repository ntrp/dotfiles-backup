set shell=/bin/sh

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Leader key
let g:mapleader = ","

" 1 is the blinky block cursor
" 2 is the default (non-blinky) block cursor
" 3 is blinky underscore
" 4 fixed underscore
" 5 pipe bar (blinking)
" 6 fixed pipe bar
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[2 q"
let &t_EI = "\<esc>[1 q"

let g:promptline_preset = {
      \'a'    : [ '\h' ],
      \'b'    : [ '\u' ],
      \'c'    : [ '\w' ]}

set timeoutlen=1000 ttimeoutlen=0
set updatetime=100
" allow buffer switching when not saved
set hidden

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamedplus

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" disable swap files
set nobackup
set noswapfile

set undofile "keep persistent undo across vim runs
set undodir=~/.vim-undo/ "where to store undo files

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" search settings
set hlsearch
set ignorecase
set smartcase

" main color scheme
set background=dark

let base16colorspace=256
syntax on
set t_Co=256 " 256 color mode

" line numbers
set relativenumber
set number

" spell checking
"set spell spelllang=en_us

" Panes navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" PLUGINS
" Autoinstall vim-plug {{{
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}
call plug#begin('~/.vim/plugged')

" Text Objects
Plug 'michaeljsmith/vim-indent-object'

" Git
Plug 'tpope/vim-fugitive' " commands
Plug 'tpope/vim-rhubarb' " open in github
Plug 'tommcdo/vim-fubitive' " open in bitbucket
Plug 'airblade/vim-gitgutter' " gutter info
" .editorconfig file support
Plug 'editorconfig/editorconfig-vim'
" FZF support
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
noremap <silent> <leader><space> :Files<CR>
noremap <silent> <leader><Tab> :Buffers<CR>

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
set laststatus=2
let g:airline_powerline_fonts = 1
" EMMET
Plug 'mattn/emmet-vim'
" large files support
Plug 'mhinz/vim-hugefile'
" Directory browse
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'Xuyuanp/nerdtree-git-plugin'
:let g:NERDTreeAutoDeleteBuffer = 1
:let g:NERDTreeWinSize=50
:let g:NERDTreeDirArrows = 1
map <C-n> :NERDTreeToggle<CR>
" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! s:syncTree()
  let s:curwnum = winnr()
  NERDTreeFind
  exec s:curwnum . "wincmd w"
endfunction

function! s:syncTreeIf()
  if (winnr("$") > 1)
    call s:syncTree()
  endif
endfunction
  
" Shows NERDTree on start and synchronizes the tree with opened file when switching between opened windows
autocmd BufEnter * call s:syncTreeIf()
" Surround text with anything
Plug 'tpope/vim-surround'
" Ultisnips
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<C-ä>"
let g:UltiSnipsListSnippets="<leader>ls"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ALE linter
"Plug 'w0rp/ale'
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\   'typescript': ['tsserver', 'tslint'],
"\   'vue': ['eslint']
"\}
"let g:ale_fixers = {
"\    'javascript': ['eslint'],
"\    'typescript': ['tslint'],
"\    'vue': ['eslint'],
"\    'scss': ['prettier'],
"\    'html': ['prettier']
"\}
"let g:ale_fix_on_save = 0
"let g:ale_sign_column_always = 1

" Typescript syntax highlight
Plug 'leafgarland/typescript-vim', {'for': ['typescript']}
" TSX syntax highlight
Plug 'peitalin/vim-jsx-typescript'
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" GraphQL syntax highlight
Plug 'jparise/vim-graphql'
Plug 'lepture/vim-velocity'
au BufNewFile,BufRead *.vm,*.vtl set ft=velocity
" Automatic pairing of parenthesis
Plug 'jiangmiao/auto-pairs'
Plug '~/_PrivateWS/jdb.vim'
" Intellisense
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_force_debug = 1
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>fa  <Plug>(coc-format)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

call plug#end()

