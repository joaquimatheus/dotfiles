call plug#begin()

Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map ; :Files<CR>

Plug 'nonetallt/vim-neon-dark'

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

call plug#end()

set expandtab       
set autoindent      
set tabstop=4
set softtabstop=4
set shiftwidth=4

set t_Co=256
colorscheme neon-dark-256
set number

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css


let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\   'php': ['phpstan'],
\}

let g:ale_fixers = {
  \    'php': ['phpstan'],
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
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

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
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
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

