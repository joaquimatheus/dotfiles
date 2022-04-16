call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map ; :Files<CR>

Plug 'dense-analysis/ale'
Plug 'machakann/vim-highlightedyank'
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'norcalli/nvim-colorizer.lua'

" Theme
Plug 'NLKNguyen/papercolor-theme'
Plug 'mustache/vim-mustache-handlebars'

" Prisma
Plug 'pantharshit00/vim-prisma'

" SQL
Plug 'shmup/vim-sql-syntax'

call plug#end()


" Tab, Spaces etc config
set expandtab       
set autoindent      
set tabstop=4
set softtabstop=4
set shiftwidth=4
"/

" visual settings
set number
set cursorline
set background=dark
set termguicolors 
colorscheme PaperColor
set noshowmode

set colorcolumn=80

"end visual setings

" Coc Settings
let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-css']

:nmap <C-n> <Cmd>CocCommand explorer<cr>

lua require'colorizer'.setup()
