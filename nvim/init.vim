call plug#begin('~/.config/nvim/plugged')

" GitHub Theme
Plug 'projekt0n/github-nvim-theme'

" NERDCommenter
Plug 'preservim/nerdcommenter'

" NERDTree
Plug 'preservim/nerdtree'
" Vim-devicons (requires patched fonts)
Plug 'ryanoasis/vim-devicons'

" UltiSnips - the snippet engine
Plug 'SirVer/ultisnips'

" Vim-snippets - a collection of snippets for UltiSnips
Plug 'honza/vim-snippets'

" Vim-startify
Plug 'mhinz/vim-startify'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Configure GitHub Theme
set termguicolors
colorscheme github_dark_high_contrast

" File explorer
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



" Line numbering
set number
set relativenumber

" CoC configuration
" Check :help coc-nvim for more information on configuring coc.nvim

" Set completeopt for better completion experience
set completeopt=menuone,noinsert,noselect

" Tab to navigate the completion menu
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Other CoC key mappings...
" ...

" Additional custom settings
" ...
