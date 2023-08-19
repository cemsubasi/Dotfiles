call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'nelstrom/vim-visual-star-search'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'npm install'  }
Plug 'https://github.com/frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/itchyny/vim-gitbranch'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

Plug 'OmniSharp/omnisharp-vim'

Plug 'preservim/tagbar'
Plug 'wellle/context.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'prabirshrestha/asyncomplete.vim'

" Plug 'ruanyl/vim-fixmyjs'
" Plug 'nickspoons/vim-sharpenup'
" Plug 'dense-analysis/ale'

" Plug 'mattn/vim-lsp-settings'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'yami-beta/asyncomplete-omni.vim'

Plug 'puremourning/vimspector'

" Plug 'vim-scripts/AutoComplPop'
call plug#end()

" Set: {{{
  " set nu
  " set hlsearch
  " set tabstop=2 softtabstop=2 shiftwidth=2
  " set complete+=kspell
  " set completeopt=menuone,longest
  " set shortmess+=c
  " set background=dark
  " set t_Co=256
  " set autoindent
  " set smartindent
  " filetype on
  " syntax enable
  " set foldmethod=indent   
  " set foldnestmax=1
  " set nofoldenable
  " " set foldlevel=2
  " set noshowmode
  " set laststatus=2
  " set cmdheight=1
  " " set shell=/bin/fish

  " " TextEdit might fail if hidden is not set.
  " set hidden

  " " Some servers have issues with backup files, see #649.
  " set nobackup
  " set nowritebackup

  " " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
  " " delays and poor user experience.
  " set updatetime=300

  " " Always show the signcolumn, otherwise it would shift the text each time
  " " diagnostics appear/become resolved.
  " " if has("patch-8.1.1564")
  " "   " Recently vim can merge signcolumn and number column into one
  " "   set signcolumn=number
  " " else
  " "   set signcolumn=yes
  " " endif

  " " Don't autoselect first omnicomplete option, show options even if there is only
  " " one (so the preview documentation is accessible). Remove 'preview', 'popup'
  " " and 'popuphidden' if you don't want to see any documentation whatsoever.
  " " Note that neovim does not support `popuphidden` or `popup` yet:
  " " https://github.com/neovim/neovim/issues/10996
  " if has('patch-8.1.1880')
  "   set completeopt=longest,menuone,popuphidden,preview
  "   " Highlight the completion documentation popup background/foreground the same as
  "   " the completion menu itself, for better readability with highlighted
  "   " documentation.
  "   set completepopup=highlight:Pmenu,border:off
  " else
  "   set completeopt=longest,menuone,preview
  "   " Set desired preview window height for viewing documentation.
  "   set previewheight=5
  " endif

  "Test
  ""====================================================="
  ""===================== SETTINGS ======================"


  set laststatus=2
  set encoding=utf-8              " Set default encoding to UTF-8
  set autoread                    " Automatically reread changed files without asking me anything
  set tabstop=2 softtabstop=2 shiftwidth=2
  set smartindent
  set autoindent                  
  set backspace=indent,eol,start  " Makes backspace key more powerful.
  set incsearch                   " Shows the match while typing
  set hlsearch                    " Highlight found searches
  set mouse=a                     "Enable mouse mode

  set noerrorbells             " No beeps
  set nu                   " Show line numbers
  set rnu                   " Show line numbers
  set showcmd                  " Show me what I'm typing
  set noswapfile               " Don't use swapfile
  set nobackup                 " Don't create annoying backup files
  set splitright               " Split vertical windows right to the current windows
  set splitbelow               " Split horizontal windows below to the current windows
  set autowrite                " Automatically save before :next, :make etc.
  set hidden
  set fileformats=unix,dos,mac " Prefer Unix over Windows over OS 9 formats
  set noshowmatch              " Do not show matching brackets by flickering
  set noshowmode               " We show the mode with airline or lightline
  set ignorecase               " Search case insensitive...
  set smartcase                " ... but not it begins with upper case 
  set completeopt=menu,menuone
  set nocursorcolumn           " speed up syntax highlighting
  set nocursorline
  set updatetime=300
  set pumheight=10             " Completion window max size
  set conceallevel=2           " Concealed text is completely hidden

  set shortmess+=c   " Shut off completion messages
  set belloff+=ctrlg " If Vim beeps during completion

  set lazyredraw
  set signcolumn=number

  " }}}

" Iceberg: {{{ 
  colorscheme iceberg
  highlight LineNr term=bold ctermfg=239 ctermbg=234
  highlight Visual term=bold ctermbg=236
  highlight VertSplit term=reverse ctermfg=8
" }}}


" Nerdtree: {{{
  nnoremap <C-n> :NERDTreeToggle<CR>
  nnoremap <leader>n :NERDTreeFocus<CR>
  nnoremap <C-f> :NERDTreeFind<CR>

  execute "set <M-b>=\eb"
  execute "set <M-f>=\ef"

  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>
  cnoremap <C-p> <Up>
  cnoremap <C-n> <Down>
  cnoremap <C-b> <Left>
  cnoremap <C-f> <Right>
  cnoremap <M-b> <S-Left>
  cnoremap <M-f> <S-Right>
" }}}

" CustomKeyBindings: {{{
  " ESC binding on mac's command key
  inoremap ¬ <Esc>
  " vnoremap ¬ <Esc>
  vnoremap ¬ <C-c>
  snoremap ¬ <Esc>
  cnoremap ¬ <C-c>

  " Paste without yank
  vnoremap p "_dP"

  " nnoremap <C-j> :on<CR>
  nnoremap <C-x> :bw<CR>

  inoremap <C-l> <right>
  inoremap <C-k> <up>

  ""those key bindings are set for misspresses
  cnoremap <nowait>W w
  cnoremap <nowait>\w W
  cnoremap <nowait>Q q
  cnoremap <nowait>\q Q

  cnoremap <silent><nowait>srcv :source ~/.vimrc<CR>
  cnoremap <silent><nowait>srcz :source ~/.zshrc<CR>

  "MacOs new line with insert mode
  inoremap ø <Esc>o

  "intprg ;)
  "cnoremap intprg %s///g \| %s///g

  "copy between terminals/tabs
  vnoremap <C-y> "+y
  nnoremap <C-p> "+p

  " typescript filetype
   " augroup SyntaxSettings
   "   autocmd!
   "   autocmd BufNewFile,BufRead *.tsx set filetype=typescript
   " augroup END

  nnoremap <Leader>r :%s///g<left><left>
  nnoremap <Leader>rc :%s///gc<left><left><left>
  xnoremap <Leader>r :s///g<left><left>
  xnoremap <Leader>rc :s///gc<left><left><left>
  
  "clear highlights
  map <Leader><Space> :let @/=''<CR>

  nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
  xnoremap <silent> s* "sy:let @/=@s<CR>cgn

  " inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Down>"
  " inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Up"
  " inoremap <expr> <Up> pumvisible() ? "" : "<c-p>"
  " inoremap <expr> <Down> pumvisible() ? "" : "<c-n>"
  " inoremap <expr> <c-p> pumvisible() ? "" : ""
  " inoremap <expr> <c-n> pumvisible() ? "" : ""

" }}}


" Lightline: {{{
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'gitbranch#name'
        \ },
        \ }
" }}}


" CocVim: {{{

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" other plugin before putting this into your config.
inoremap <silent><expr> <c-n>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><c-p> coc#pum#visible() ? coc#pum#prev(1) : ""

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <c-j> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" " Use `[g` and `]g` to navigate diagnostics
   " " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
   " nmap <silent> [g <Plug>(coc-diagnostic-prev)
   " nmap <silent> ]g <Plug>(coc-diagnostic-next)

   " GoTo code navigation.
   " nmap <silent> gd <Plug>(coc-definition)
   " nmap <silent> gy <Plug>(coc-type-definition)
   " nmap <silent> gi <Plug>(coc-implementation)
   " nmap <silent> gr <Plug>(coc-references)

   " Use K to show documentation in preview window.
   " nnoremap <silent> K :call <SID>show_documentation()<CR>

   " function! s:show_documentation()
   "   if (index(['vim','help'], &filetype) >= 0)
   "     execute 'h '.expand('<cword>')
   "   elseif (coc#rpc#ready())
   "     call CocActionAsync('doHover')
   "   else
   "     execute '!' . &keywordprg . " " . expand('<cword>')
   "   endif
   " endfunction

   " " Highlight the symbol and its references when holding the cursor.
   " autocmd CursorHold * silent call CocActionAsync('highlight')

   " Symbol renaming.
   " nmap <leader>rn <Plug>(coc-rename)

   " " Formatting selected code.
   " xmap <leader>f  <Plug>(coc-format-selected)
   " nmap <leader>f  <Plug>(coc-format-selected)

   " augroup mygroup
   "   autocmd!
   "   " Setup formatexpr specified filetype(s).
   "   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
   "   " Update signature help on jump placeholder.
   "   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
   " augroup end

   " Applying codeAction to the selected region.
   " Example: `<leader>aap` for current paragraph
   " xmap <leader>a  <Plug>(coc-codeaction-selected)
   " nmap <leader>a  <Plug>(coc-codeaction-selected)

   " " Remap keys for applying codeAction to the current buffer.
   " nmap <leader>ac  <Plug>(coc-codeaction)
   " " Apply AutoFix to problem on the current line.
   " nmap <leader>qf  <Plug>(coc-fix-current)

   " " Map function and class text objects
   " " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
   " xmap if <Plug>(coc-funcobj-i)
   " omap if <Plug>(coc-funcobj-i)
   " xmap af <Plug>(coc-funcobj-a)
   " omap af <Plug>(coc-funcobj-a)
   " xmap ic <Plug>(coc-classobj-i)
   " omap ic <Plug>(coc-classobj-i)
   " xmap ac <Plug>(coc-classobj-a)
   " omap ac <Plug>(coc-classobj-a)

   " Remap <C-f> and <C-b> for scroll float windows/popups.
   if has('nvim-0.4.0') || has('patch-8.2.0750')
     inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
     inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
     vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
     vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
   endif

   " Use CTRL-S for selections ranges.
   " Requires 'textDocument/selectionRange' support of language server.
   " nmap <silent> <C-s> <Plug>(coc-range-select)
   " xmap <silent> <C-s> <Plug>(coc-range-select)
   
    "coc-react-refactor
    " xmap <leader>a  <Plug>(coc-codeaction-selected)
    " nmap <leader>a  <Plug>(coc-codeaction-selected)

   " Add `:Format` command to format current buffer.
   " command! -nargs=0 Format :call CocAction('format')

   " Add `:Fold` command to fold current buffer.
   " command! -nargs=? Fold :call     CocAction('fold', <f-args>)

   " Add `:OR` command for organize imports of the current buffer.
   " command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

   " Add (Neo)Vim's native statusline support.
   " NOTE: Please see `:h coc-status` for integrations with external plugins that
   " provide custom statusline: lightline.vim, vim-airline.
   " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

   " " Mappings for CoCList
   " " Show all diagnostics.
   " nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
   " " Manage extensions.
   " nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
   " " Show commands.
   " nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
   " " Find symbol of current document.
   " nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
   " " Search workspace symbols.
   " nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
   " " Do default action for next item.
   " nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
   " " Do default action for previous item.
   " nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
   " " Resume latest coc list.
   " nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" }}}

" Prettier: {{{
  let g:prettier#autoformat = 1
  let g:prettier#autoformat_require_pragma = 0
  let g:prettier#quickfix_enabled = 0
" }}}

" AutoPair: {{{
    let g:AutoPairsShortcutFastWrap = '<C-e>'
" }}}

" Fzf: {{{
    nnoremap <leader>f :Rg!<CR>
    " nnoremap <leader>s :Ag!<CR>
    nnoremap <leader>s :Files!<CR>
    nnoremap <leader>m :Marks<CR>
    nnoremap <leader>b :BCommits!<CR>
    nnoremap <leader>c :Commits!<CR>
    " nnoremap <C-c> :Commands!<CR>

    function! RipgrepFzf(query, fullscreen)
      let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
      let initial_command = printf(command_fmt, shellescape(a:query))
      let reload_command = printf(command_fmt, '{q}')
      let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
      call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
    endfunction

    command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
    " command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
    " command! -bang -nargs=* Ag
    "    \call fzf#vim#ag(<q-args>,
    "                    \{'options': '--delimiter : --nth 4..'},
    "                    \<bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
    "                            \: fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:50%'),
    "                    \<bang>0)
    command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:50%')
      \                         : fzf#vim#with_preview('right:60%:hidden', '?'),
      \                 <bang>0)




    " function! AGFzf(query, fullscreen)
    "   let command_fmt = 'ag -l --path-to-ignore ~/.ignore --nocolor --hidden --filename -g ""'
    "   let initial_command = printf(command_fmt, shellescape(a:query))
    "   let reload_command = printf(command_fmt, '{q}')
    "   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    "   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
    " endfunction

    " command! -nargs=* -bang AG call AGFzf(<q-args>, <bang>0)
    "nnoremap <silent> <C-p> :FZF -m<CR>
    nnoremap <silent> <Leader><Enter> :Buffers<CR>
    noremap <silent> <Leader>1 :Lines<CR>
" }}}

" Ale: {{{
  " Fixmyjs
  let g:ale_disable_lsp = 1
  " let g:ale_sign_error = '†'
  " let g:ale_sign_warning = '†'
  let g:ale_set_highlights = 0
  " let g:ale_set_signs = 0
  let g:ale_fixers = {}
  let g:ale_fixers.javascript = ['eslint']
  let g:ale_fix_on_save = 1
  let g:ale_sign_column_always = 0
  " " highlight clear ALEErrorSign
  " " highlight clear ALEWarningSign
  " " Tell ALE to use OmniSharp for linting C# files, and no other linters.
  let g:ale_linters = { 'cs': ['OmniSharp'] }
  nmap <silent> <C-[> <Plug>(ale_previous_wrap)
  nmap <silent> <C-]> <Plug>(ale_next_wrap)
  highlight ALEErrorSign ctermfg=203 ctermbg=234
  highlight ALEWarningSign ctermfg=216 ctermbg=234
" }}}

" OmniSharp: {{{
		let g:OmniSharp_diagnostic_exclude_paths = [
      \ 'obj\\',
      \ '[Tt]emp\\',
      \ '\.nuget\\',
      \ '\<AssemblyInfo\.cs\>'
      \]

		let g:OmniSharp_diagnostic_overrides = {
      \ 'IDE0010': {'type': 'I'},
      \ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
      \ 'CS8019': {'type': 'None'},
      \ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
      \}
    
   " let g:OmniSharp_server_path = "/Users/cem.subasi/.cache/omnisharp-vim/run"

  augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    " autocmd CursorHold *.cs OmniSharpTypeLookup

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
    autocmd FileType cs nmap <silent> <buffer> gu <Plug>(omnisharp_find_usages)
    autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
    autocmd FileType cs nmap <silent> <buffer> gpd <Plug>(omnisharp_preview_definition)
    autocmd FileType cs nmap <silent> <buffer> gpi <Plug>(omnisharp_preview_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
    autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_documentation)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
    autocmd FileType cs nmap <silent> <buffer> <Leader>of <Plug>(omnisharp_fix_usings)
    autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
    autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

    " Navigate up and down by method/property/field
    autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
    autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nmap <silent> <buffer> <Leader>err <Plug>(omnisharp_global_code_check)
    " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
    autocmd FileType cs xmap <silent> <buffer> <Leader>ac <Plug>(omnisharp_code_actions)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ac <Plug>(omnisharp_code_actions)
    " Repeat the last code action performed (does not use a selector)
    autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

    autocmd FileType cs nmap <silent> <buffer> <Leader>w <Plug>(omnisharp_code_format)

    autocmd FileType cs nmap <silent> <buffer> <Leader>re <Plug>(omnisharp_rename)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
    " autocmd BufWritePre *.cs OmniSharpCodeFormat
    " autocmd BufWritePost *.cs OmniSharpCodeFormat
    " doautocmd BufWrite *.cs OmniSharpCodeFormat
    " autocmd ExitPre *.cs OmniSharpCodeFormat
    " autocmd FileChangedShell *.cs OmniSharpCodeFormat set modified
    " autocmd BufWriteCmd *.cs OmniSharpCodeFormat
    
    function! s:CBCodeFormat() abort
        noautocmd write
          set nomodified
    endfunction
    autocmd BufWritePre *.cs call OmniSharp#actions#format#Format(function('s:CBCodeFormat'))

    let g:OmniSharp_highlighting = 0
    " let g:OmniSharp_popup_position = 'peek'
    " let g:OmniSharp_server_stdio = 0
    " let g:OmniSharp_server_use_mono = 1
    " let g:OmniSharp_server_use_net6 = 1
    let g:OmniSharp_server_path = '/Users/cem.subasi/.cache/omnisharp-vim/omnisharp-osx-arm64-net6.0/OmniSharp'
    let g:OmniSharp_popup_options = {
      \ 'padding': [1],
      \}

   " OmniSharp server restart shortcut
    cnoremap omnires OmniSharpRestartServer<CR>

    " let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
    " let g:OmniSharp_selector_findusages = 'fzf'

    " let g:OmniSharp_fzf_options = { 'down': '20%'  } " max 20% of the screen height
    " let g:OmniSharp_fzf_options = { 'down': '10'  }  " max 10 lines high
    " let g:OmniSharp_fzf_options = { 'right': '50%'  } " vertical split

    " let g:OmniSharp_popup_mappings = {
    "   \ 'sigNext': '<C-]>',
    "   \ 'sigPrev': '<C-p>',
    "   \ 'pageDown': ['<C-f>', '<PageDown>'],
    "   \ 'pageUp': ['<C-b>', '<PageUp>']
    "   \}
  
		let g:OmniSharp_popup_mappings = {
      \ 'sigNext': '<C-]>',
      \ 'sigPrev': '<C-[>',
      \ 'sigParamNext': '<C-u',
      \ 'sigParamPrev': '<C-d'
      \}

    let g:OmniSharp_popup_mappings.close = '<C-c>'

" }}}

" Asyncomplete: {{{
    " let g:asyncomplete_auto_popup = 1
    " inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
    " inoremap <expr> <C-j>    pumvisible() ? asyncomplete#close_popup() : "\<C-j>"
    " imap <c-@> <Plug>(asyncomplete_force_refresh)
    
    " let g:asyncomplete_auto_completeopt = 0
" }}}

" " AsyncCompleteOmni {{{
" 	autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
" 	\ 'name': 'omni',
" 	\ 'allowlist': ['*'],
" 	\ 'blocklist': ['c', 'cpp', 'html'],
" 	\ 'completor': function('asyncomplete#sources#omni#completor'),
" 	\ 'config': {
" 	\   'show_source_kind': 1,
" 	\ },
" 	\ }))
" " }}}

" " LSP: {{{
"   if executable('pyls')
"       " pip install python-language-server
"       au User lsp_setup call lsp#register_server({
"           \ 'name': 'pyls',
"           \ 'cmd': {server_info->['pyls']},
"           \ 'allowlist': ['python'],
"           \ })
"   endif

"   function! s:on_lsp_buffer_enabled() abort
"       setlocal omnifunc=lsp#complete
"       setlocal signcolumn=yes
"       if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"       nmap <buffer> gd <plug>(lsp-definition)
"       nmap <buffer> gs <plug>(lsp-document-symbol-search)
"       nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"       nmap <buffer> gr <plug>(lsp-references)
"       nmap <buffer> gi <plug>(lsp-implementation)
"       nmap <buffer> gt <plug>(lsp-type-definition)
"       nmap <buffer> <leader>rn <plug>(lsp-rename)
"       nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"       nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"       nmap <buffer> K <plug>(lsp-hover)
"       " nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"       " nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

"       let g:lsp_format_sync_timeout = 1000
"       autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
      
"       " refer to doc to add more commands
"   endfunction

"   augroup lsp_install
"       au!
"       " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"       autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"   augroup END

"   let g:lsp_log_verbose = 1
"   let g:lsp_log_file = expand('~/vim-lsp.log')

"   " for asyncomplete.vim log
"   let g:asyncomplete_log_file = expand('~/asyncomplete.log')
" " }}}

" UltiSnips: {{{
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-[>"
" }}}
"
" VimSpectator: {{{
  let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"}}}

" TagBar: {{{
  nmap <Leader>t :TagbarToggle<CR>
"}}}

" AutoCommand: {{{

" autocmd_add({replace: true,
" 		group:   'DemoGroup',
" 		event:   'BufEnter',
" 		pattern: '*.cs',
" 		cmd:     'call DemoBufEnter()'
" 		})
" }}}

" CustomColor: {{{

  " highlight Pmenusel ctermfg=14 ctermbg=16
  " highlight Pmenu ctermfg=16 ctermbg=Cyan
  " highlight PmenuSbar ctermfg=16 ctermbg=Cyan
  " highlight Search ctermfg=235 ctermbg=11
  highlight Visual term=bold ctermfg=black ctermbg=119
  highlight Search term=bold ctermfg=235 ctermbg=119
  " highlight Search ctermfg=119 ctermbg=240
  highlight LineNr ctermfg=119
  " highlight MatchParen ctermbg=119 ctermfg=black
  " highlight MatchParen ctermfg=235 ctermbg=117
  highlight MatchParen ctermfg=235 ctermbg=15
  highlight LineNrAbove  ctermfg=240 ctermbg=234 
  highlight LineNrBelow  ctermfg=240 ctermbg=234 
  highlight CursorColumn ctermfg=119 ctermbg=240 
  highlight SignColumn ctermfg=119 ctermbg=240 
  " highlight Search ctermfg=235 ctermbg=14
  " highlight typescriptFuncTypeArrow guifg=bg guibg=fg
  " highlight typescriptPredefinedType guifg=bg guibg=fg
  " highlight typescriptVariable guifg=bg guibg=fg
  " highlight typescriptFuncType guifg=bg guibg=fg
  " highlight typescriptFuncComma guifg=bg guibg=fg
  " highlight Special term=bold ctermfg=14 guifg=#80a0ff
  " highlight typescriptArrowFunc term=bold ctermfg=14 guifg=#80a0ff
  " highlight typescriptArrowFunc guifg=bg guibg=fg
  
  " ctermbg=220 yellow
  
  " highlight Pmenu term=standout ctermfg=220 ctermbg=236 guifg=Black
  " highlight PmenuSel term=bold ctermfg=0 ctermbg=220 gui=bold guifg=#ffff60 
  " highlight PmenuSbar term=standout ctermfg=236 ctermbg=220 guifg=Black
  " highlight SpecialKey term=bold ctermfg=220
  " highlight Statement term=bold ctermfg=220
  " highlight Comment term=bold ctermfg=140
  " highlight Constant term=bold ctermfg=104
  " highlight csBraces term=bold ctermfg=220
  " highlight csGenericBraces term=bold ctermfg=220
  " highlight csParens term=bold ctermfg=6
  " highlight csEndColon term=bold ctermfg=220
  " highlight Type term=bold ctermfg=81 " 14 " 74
  " highlight NONE term=bold ctermfg=74
  " highlight csUserType term=bold ctermfg=74
  " highlight csUserIdentifier term=bold ctermfg=74
  " highlight csUserInterface term=bold ctermfg=74
  " highlight csUserMethod term=bold ctermfg=74
  " highlight csNewType term=bold ctermfg=74
  " highlight csGeneric term=bold ctermfg=74
  " highlight LineNr term=bold ctermfg=220 gui=bold guifg=#ffff60 ctermbg=0
" }}}

let g:vimspector_base_dir='/Users/cem.subasi/.vim/plugged/vimspector'
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:omnisharp_proc_debug = 1
