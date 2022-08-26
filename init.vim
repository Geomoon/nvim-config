source ~/.config/nvim/pluggins.vim

set termguicolors

source ~/.config/nvim/pluggins/lualine.vim
" source ~/.config/nvim/pluggins/colorizer.vim
source ~/.config/nvim/pluggins/autopairs.vim
source ~/.config/nvim/pluggins/autotag.vim
source ~/.config/nvim/pluggins/coc.vim

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set relativenumber

" open terminal 
nnoremap <silent>tv <cmd> :botright vnew <Bar> :terminal<cr>
nnoremap <silent>th <cmd> :botright new <Bar> :terminal<cr>

" resize buffers
nnoremap <silent> <C-h> :vertical resize +2<CR>
nnoremap <silent> <C-l> :vertical resize -2<CR>
nnoremap <silent> <C-k> :resize +2<CR>
nnoremap <silent> <C-j> :resize -2<CR>

" PLUGINS

set background=dark
" colorscheme one
" colorscheme NeoSolarizedc
" colorscheme github_*
colorscheme nightfox

" hi normal guibg=000000

"  open new split panes to right and below
set splitright
set splitbelow
inoremap fj <Esc>

" turn terminal to normal mode with escape
" tnoremap <Esc> <C-\><C-n>

"tabs navigation
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

" resize buffers
nnoremap <silent> <C-h> :vertical resize +5<CR>
nnoremap <silent> <C-l> :vertical resize -5<CR>
nnoremap <silent> <C-k> :resize +5<CR>
nnoremap <silent> <C-j> :resize -5<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Coc Plugin congfig
" inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" NERDTREE config
let NERDTreeIgnore = ['\node_modules', '__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo    ', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
" let g:NERDTreeDirArrows=0

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" map <C-t> :NERDTreeToogle<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

 " TELESCOPE
nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua <<EOF
local action = require('telescope.actions')

require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = action.close
            }
        }
    }
}
EOF
