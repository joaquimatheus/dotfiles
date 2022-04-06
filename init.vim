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

" Plugins NERDTree AREA

" Prisma
Plug 'pantharshit00/vim-prisma'

call plug#end()


" Tab, Spaces etc config
set expandtab       
set autoindent      
set tabstop=2
set softtabstop=2
set shiftwidth=2
"/

" visual settings
set number
set cursorline
set background=dark
set termguicolors 
colorscheme PaperColor

set noshowmode
" end visual setings


au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css


let g:ale_fixers = {
  \    'php': ['php_cs_fixer'],
  \    'javascript': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
\}

let g:ale_fix_on_save = 1

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()



" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"eslint
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...  This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'javascript.jsx': 'jsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Coc Settings
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver', 'coc-flow', 'coc-explorer', 'coc-html', 'coc-css']

:nmap <C-n> <Cmd>CocCommand explorer<cr>

lua require'colorizer'.setup()
