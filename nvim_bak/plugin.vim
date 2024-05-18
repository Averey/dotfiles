" vim-plug
call plug#begin('~/.config/nvim/plugged')

" neovim 0.5 new feature plugin
"
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Note stable yet, We recommend updating the parsers on update

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" main one
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}


" Plug 'dhruvasagar/vim-zoom'
" Plug 'vim-scripts/ZoomWin'
" Plug 'ap/vim-css-color'
" Plug 'gko/vim-coloresque'

" color Scheme
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'kyoz/purify', { 'rtp': 'vim' }

" complete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'zchee/deoplete-jedi'
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'justinmk/vim-dirvish'
Plug 'junegunn/vim-easy-align'
Plug 'yggdroot/indentline'
Plug 'machakann/vim-highlightedyank'
"Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
"Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'mileszs/ack.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'
Plug 'mhinz/vim-startify'

"Plug 'junegunn/limelight.vim'
"Plug 'sheerun/vim-polyglot' "类似于pangloss/vim-javascript
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'kshenoy/vim-signature'

Plug 'rust-lang/rust.vim'

call plug#end()


" color scheme
"----------------------------------------
if (has("termguicolors"))
   set termguicolors
endif

syntax on
colorscheme palenight
"colorscheme purify
set background=dark
" 透明背景
" hi! Normal ctermbg=NONE guibg=NONE 
hi! Normal ctermbg=NONE 
" set guifont=Fantasque Sans Mono

" easy align
" ---------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Indent line 
"-----------------------------------------	
let g:indentLine_char = '┊'
let indentLine_enabled = 0
nmap <Leader>i :IndentLinesToggle<CR>


"-------------nerdtree setting--------------
map <Leader>t :NERDTreeToggle<CR>
map <Leader>d :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['node_modules$[[dir]]']
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden = 1

" -------------deoplete-------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#enable_refresh_always= 1
" deoplete-ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'js',
                \ 'javascript.jsx',
                \ 'vue'
                \]

"--------------coc.vim----------------------------
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


"--------------fzf----------------------------
set rtp+=~/.fzf
map <c-p> :Files<cr>
map <a-l> :Buffers<cr>
map <a-h> :History:<cr>
"Files command with preview window
" command! -bang -nargs=? -complete=dir Files
"   \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" ack.vim
" --------------------------------------
if executable('rg')
"  let g:ackprg = 'rg --vimgrep'
   let g:ackprg = 'rg --vimgrep'
endif
let g:ackhighlight = 1
cnoreabbrev Ack Ack!
nnoremap <Leader>g :Ack!<Space>
nnoremap # :Ack! <C-r><c-w><cr>

" ultisnips
" ---------------------------------------------
" set rtp+=~/repo/ConfigFile
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="\\"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir = '~/dotfiles/nvim/mySnips'
let g:UltiSnipsSnippetDirectories=[
      \ "UltiSnips", 
      \ $HOME."/dotfiles/nvim/mySnips"
      \ ]

" ale
" ----------------------------------------
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_javascript_eslint_use_global = 1
let g:ale_sign_error = '×'
let g:ale_sign_warning = '▌'
"let g:ale_sign_warning = '⋯'
"let g:ale_sign_warning = '░'


" vim-matchup
" ----------------------------------------
let g:matchup_matchparen_offscreen = {}


" vim-polyglot
" ----------------------------------------
" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1


" nvim-cmp
" ------------------------------------------
" set completeopt=menu,menuone,noselect
" lua <<EOF
"   -- Setup nvim-cmp.
"   local cmp = require'cmp'
"   cmp.setup({
"     snippet = {
"       expand = function(args)
"         -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
"         vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
"         -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
"         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
"       end,
"     },
"     mapping = {
"       ['<C-d>'] = cmp.mapping.scroll_docs(-4),
"       ['<C-f>'] = cmp.mapping.scroll_docs(4),
"       ['<C-Space>'] = cmp.mapping.complete(),
"       ['<C-e>'] = cmp.mapping.close(),
"       ['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
"       ['<CR>'] = cmp.mapping.confirm({ select = true }),
"     },
"     sources = cmp.config.sources({
"       { name = 'nvim_lsp' },
"       -- { name = 'vsnip' }, -- For vsnip users.
"       { name = 'ultisnips' }, -- For ultisnips users.
"       -- { name = 'snippy' }, -- For snippy users.
"       -- { name = 'luasnip' }, -- For luasnip users.
"     }, {
"       { name = 'buffer' },
"     })
"   })

"   -- Setup lspconfig.
"   local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
"   require('lspconfig')['tsserver'].setup {
"    capabilities = capabilities
"   }
" EOF
