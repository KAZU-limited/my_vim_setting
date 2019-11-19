set imdisable
set ignorecase
set autochdir
"inoremap <ESC> <ESC>:set iminsert=0<CR>:set imsearch=0<CR>
nnoremap tn :tabnew<CR>
"nnoremap <C-t> :tabnew<CR>
nnoremap tl gt
nnoremap th gT
inoremap <C-s> <Home>
inoremap <C-e> <End>
nnoremap <Space> i<Space><Esc>
nnoremap ff :%s///c<Left><Left><Left>
nnoremap <C-j> o<Esc>
nnoremap <CR> a<CR><Esc>
nnoremap <S-CR> <S-o><Esc>
nnoremap ss :source<Space>$XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap so :tabnew<CR>:e $XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap \b :bd!<CR>
nnoremap <Esc><Esc> :noh<CR>
nnoremap ; :
nnoremap : ;
inoremap ; :
inoremap : ;

nnoremap <F8> :TagbarToggle<CR>

let g:tagbar_left = 1

" I guess that /tmp is C:\tmp.
" let g:R_tmpdir='C:\tmp'
" let g:R_tmpdir='~\tmp'
" let g:R_tmpdir='\tmp'

" deol#send('pandoc ' . expand("%:p") . ' -o ' . expand("%:p:r") . '.pdf -V documentclass=ltjsarticle --pdf-engine=lualatex')<CR>
" nnoremap <silent> mp :vsplit<CR><C-w>l:Deol<CR><C-\><C-n><C-w>hpandoc "%:p"   -o "%:p:r".pdf -V documentclass=ltjsarticle --pdf-engine=lualatex 
nnoremap <silent> mp :vsplit<CR><C-w>l:Deol<CR><C-\><C-n><C-w>h
        \:call deol#send('pandoc ' . expand("%:p") . ' -o ' . expand("%:p:r") . '.pdf -V documentclass=ltjsarticle --pdf-engine=lualatex')
        \<CR>

let R_in_buffer=1

nnoremap ej :e ++enc=shift-jis<CR>

nnoremap <C-2> i"<Esc>ea"<Esc>
nnoremap <C-7> i'<Esc>ea'<Esc>


nnoremap <Plug>(HelloWorld) :echo "hello world!"<CR>
nmap <C-s> <Plug>(HelloWorld)

" set guifont=Ricky\ Diminished:h14:cSHIFTJIS
" set guifont=Consolas:h12:cSHIFTJIS

" --------------Denite keybind-------------
nnoremap df :Denite file<CR>
nnoremap db :Denite buffer<CR>
nnoremap dfi :Denite -input= file<Left><Left><Left><Left><Left>
nnoremap dr :Denite file/rec<CR>
nnoremap dri :Denite -input= file/rec<Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap dm :Denite file_mru<CR>
nnoremap dy :Denite neoyank<CR>
nnoremap do :Denite file/old<CR>
nnoremap dg :Denite grep<CR>
nnoremap dgp :Denite grep/py<CR>
"-----------------------------------------
"
nnoremap ne :NeoSnippetEdit<CR>

" let g:project_dir ='~\PycharmProjects'
let g:project_dir ='\neovim_plugin\repos\github.com\Shougo\'


" nnoremap <expr> ge Defx g:project_dir
nnoremap ge :Defx .<CR>

"let g:previm_open_cmd = 'open -a Google\ Chrome'
let g:previm_open_cmd = 'start'
let g:previm_enable_realtime = 1

set tags =.\tags;
"let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
" set the virtual env python used to launch the debugger

if has('win32') || has('win64')
	cd ~
	let plugin_dir = 'C:\neovim_plugin\'
	let g:neosnippet#snippets_directory= plugin_dir . '\repos\github.com\Shougo\neosnippet-snippets\neosnippets\'
	let g:python3_host_prog = 'C:\ProgramData\Anaconda3\python.exe'
	let g:python_host_prog='C:\Python27\python.exe'
	let g:deoplete#sources#jedi#python_path = 'C:\ProgramData\Anaconda3\python.exe'
	set runtimepath+=C:\neovim_plugin\repos\github.com\Shougo\dein.vim
	nmap <C-/> <Plug>(caw:zeropos:toggle)
	vmap <C-/> <Plug>(caw:zeropos:toggle)
elseif has('unix')
	let plugin_dir = '~/nvim_dir/plugin/'
	let g:neosnippet#snippets_directory= plugin_dir . '/repos/github.com/Shougo/neosnippet-snippets/neosnippets/'
	let g:python3_host_prog = '/usr/bin/python3'
" 	let g:deoplete#sources#jedi#python_path = '~/anaconda3/envs/tf_gpu/bin/python'
	let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
	set runtimepath+=~/nvim_dir/plugin/repos/github.com/Shougo/dein.vim
	nmap <C-_> <Plug>(caw:zeropos:toggle)
	vmap <C-_> <Plug>(caw:zeropos:toggle)
endif

"set pumblend=20 	
"
" let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
autocmd FileType python nnoremap <C-l> :call Autopep8()<CR>
"autocmd FileType python nnoremap <C-l> :call Autopep8()<CR>

set clipboard+=unnamedplus

"set clipboard+=unnamed
set timeout timeoutlen=250
"set wildmode=longest:full,full
"set guifont=Consolas:h12
set helpheight=100

tnoremap <Esc> <C-\><C-n>
nnoremap gl :tabnew<CR>:terminal w3m https://eow.alc.co.jp/search?q=""<Left><C-r>0<CR>
nnoremap gs :tabnew<CR>:terminal googler <C-r>0<CR>

"set display=truncate

if &compatible
  set nocompatible               " Be iMproved
endif

"neovim_plugin""
" Required:
if dein#load_state(plugin_dir)
  call dein#begin(plugin_dir)
  " Let dein manage dein
  " Required:
  call dein#add('Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deol.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
"  call dein#add('Shougo\echodoc.vim')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('deoplete-plugins/deoplete-jedi')
  call dein#add('vivkin/flatland.vim')
  call dein#add('cocopon/iceberg.vim')
  call dein#add('jonathanfilip/vim-lucius')
  call dein#add('jalvesaq/Nvim-R')
"  call dein#add('scrooloose/syntastic')
  call dein#add('altercation/vim-colors-solarized')
"  call dein#add('vim-python/python-syntax')
  call dein#add('chrisbra/csv.vim')
  call dein#add('mechatroner/rainbow_csv')
  call dein#add('majutsushi/tagbar')
"  call dein#add('vim-scripts/taglist.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tyru/caw.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('gotcha/vimpdb')
  call dein#add('pepo-le/win-ime-con.nvim')
  call dein#add('iamcco/markdown-preview.nvim')
  call dein#add('plasticboy/vim-markdown')
"   call dein#add('vim-pandoc/vim-pandoc')
"   call dein#add('vim-pandoc/vim-pandoc-syntax')
  call dein#add('marciomazza/vim-brogrammer-theme')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('kmnk/denite-dirmark')
"   call dein#add('ervandew/supertab')
  call dein#add('previm/previm')
  call dein#add('tell-k/vim-autopep8')

"  call dein#add('iamcco\markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
"					\ 'build': 'make' })
"					\ 'build': 'cd app & yarn install' })
"  call dein#add('junegsnn\fzf', { 'build': './install --all', 'merged': 0 })
"  call dein#add('junegunn\fzf')
"  call dein#add('ncm2\float-preview.nvim')
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

nnoremap cdc :call dein#check_clean()<CR>
nnoremap cdr :call dein#recache_runtimepath()<CR>

"-----------colorscheme------------------------------
"augroup WindowManagement
"  autocmd!
"  autocmd WinEnter * call Handle_Win_Enter()
"augroup END
"
" Change highlight group of active/inactive windows
"function! Handle_Win_Enter()
"  setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
"endfunction
"
"
"
colorscheme flatland
let g:airline_theme = 'simple'
let g:airline#extensions#tabline#enabled = 1

"highlight Pmenu ctermbg=239 guifg=red
"highlight PmenuSel ctermbg=6 guifg=red
"highlight PMenuSbar ctermbg=239 guifg=red
"
"highlight Comment ctermfg=20 guifg=Gray
"syntax match txtstring /self/ 
"highlight link txtString Special 
"highlight Special ctermfg=5 guifg=Purple
"highlight Float ctermfg=red guifg=red
"highlight LineNr ctermfg=grey guifg=Grey
"highlight Number ctermfg=red guifg=red
"highlight Function guifg=Lightblue

set hlsearch
hi search guibg=#00FFFF guifg=#000000
set number
hi ActiveWindow guibg=#17252c
hi InactiveWindow guibg=#0D1B22
hi NormalFloat guifg=#2e3440 guibg=#a3be8c

"colorscheme lucius
"let g:lucius_style='dark' 
"let g:lucius_contrast ='low'
"let g:lucius_contrast_bg =0
"let g:lucius_use_bold =1
"let g:lucius_use_underline =1

"autocmd ColorScheme * highlight Boolean ctermfg=green
"autocmd ColorScheme * highlight Comment ctermfg=8
"
"
"autocmd ColorScheme * highlight Constant ctermfg=green
"autocmd ColorScheme * highlight Conditional ctermfg=green
"autocmd ColorScheme * highlight Define ctermfg=green
"autocmd ColorScheme * highlight Error ctermfg=green
"autocmd ColorScheme * highlight Exception ctermfg=green
"autocmd ColorScheme * highlight Float ctermfg=green
"autocmd ColorScheme * highlight Function ctermfg=green
"autocmd ColorScheme * highlight Include ctermfg=green
"autocmd ColorScheme * highlight Identifier ctermfg=green
"autocmd ColorScheme * highlight LineNr ctermfg=grey
"autocmd ColorScheme * highlight Number ctermfg=blue
"autocmd ColorScheme * highlight Operator ctermfg=green
"autocmd ColorScheme * highlight Repeat ctermfg=green
"autocmd ColorScheme * highlight Special ctermfg=13
""autocmd ColorScheme * highlight Special ctermfg=green
"autocmd ColorScheme * highlight string ctermfg=green
"autocmd ColorScheme * highlight Statement ctermfg=green
"autocmd ColorScheme * highlight Structure ctermfg=green
"autocmd ColorScheme * highlight Todo ctermfg=green

" -----------------------------------------------------------------

" ---fugitive setting ----------------

nnoremap ggb :Gblame<CR>

if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END

"set completeopt-=preview
"let g:float_preview#docked = 1

"let g:R_rconsole_height   
let g:R_rconsole_width =100

let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 1
let g:jedi#auto_close_doc = 1
let g:jedi#show_call_signatures =0
let g:jedi#show_call_signatures_delay =0

" inoremap <silent><expr> <C-Space>
inoremap <silent><expr><TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

call deoplete#custom#buffer_option('auto_complete', v:false)
"call deoplete#custom#buffer_option('auto_complete', v:true)
"call deoplete#custom#buffer_option('auto_complete', v:false)
call deoplete#custom#buffer_option('manual_complete', v:true)
"autocmd FileType python call deoplete#custom#buffer_option('auto_complete', v:false)
"
"inoremap <expr> <Tab> deoplete#manual_complete()

let g:deoplete#enable_yarp = 0
let g:deoplete#auto_complete =0
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete= 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 100
"let g:deoplete#omni_patterns = {}
let g:deoplete#sources#jedi#statement_length=100
let g:deoplete#sources#jedi#enable_typeinfo=0
let g:deoplete#sources#jedi#show_docstring = 0
let g:deoplete#sources#jedi#server_timeout=200
"let g:deoplete#sources#jedi#extra_path
"let g:deoplete#sources#jedi#ignore_errors  

"let g:echodoc#enable_at_startup=1
"let g:echodoc#type = 'signature'
"let g:echodoc#events
"let g:echodoc#highlight_identifier
"let g:echodoc#highlight_arguments
"let g:echodoc#highlight_trailing
"autocmd FileType python setlocal completeopt-=preview

nnoremap py :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR>ipython<CR><C-\><C-n><C-w><S-l><C-w>h
nnoremap pb :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-l>apython -m pdb<Space>

nnoremap \e yy:call deol#send('')<Left><Left><C-r>0<CR>
vnoremap \e y:call deol#send('')<Left><Left><C-r>0<CR>
nnoremap \w :call deol#send('exec(open(r"' . expand("%:p") . '").read())')<CR>
nnoremap \db :call deol#send('import ' . expand("%:r"))<CR>

" origina
" l http://stackoverflow.com/questions/12374200/using-uncrustify-with-vim/15513829#15513829
"function! Preserve(command)
"    " Save the last search.
"    let search = @/
"    " Save the current cursor position.
"    let cursor_position = getpos('.')
"    " Save the current window position.
"    normal! H
"    let window_position = getpos('.')
"    call setpos('.', cursor_position)
"    " Execute the command.
"    execute a:command
"    " Restore the last search.
"    let @/ = search
"    " Restore the previous window position.
"    call setpos('.', window_position)
"    normal! zt
"    " Restore the previous cursor position.
"    call setpos('.', cursor_position)
"endfunction
"
"function! Autopep8()
"    call Preserve(':silent %!autopep8 -')
"endfunction
"
"" Shift + F で自動修正
"autocmd FileType python nnoremap <C-l> :call Autopep8()<CR>

"

"" Expand the completed snippet trigger by <CR>.
imap <expr><CR>
\ (pumvisible() && neosnippet#expandable()) ?
\ "\<Plug>(neosnippet_expand)" : "\<CR>"

"for dirmark
call dirmark#set_cache_directory_path(plugin_dir . '/.cache/denite-dirmark')

"-------------------------denite Define mappings-------------------------
"
call denite#custom#kind('buffer', 'default_action', 'open')
"call denite#custom#kind('file', 'default_action', 'split')
"
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

" Change file/rec command.
call denite#custom#var('file/rec', 'command',
\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" Change matchers.
call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
call denite#custom#source(
\ 'file/rec', 'matchers', ['matcher/cpsm'])

" Change sorters.
call denite#custom#source(
\ 'file/rec', 'sorters', ['sorter/sublime'])

" Change default action.
call denite#custom#kind('file', 'default_action', 'split')

" Add custom menus
let s:menus = {}

let s:menus.zsh = {
	\ 'description': 'Edit your import zsh configuration'
	\ }
let s:menus.zsh.file_candidates = [
	\ ['zshrc', '~/.config/zsh/.zshrc'],
	\ ['zshenv', '~/.zshenv'],
	\ ]

let s:menus.my_commands = {
	\ 'description': 'Example commands'
	\ }
let s:menus.my_commands.command_candidates = [
	\ ['Split the window', 'vnew'],
	\ ['Open zsh menu', 'Denite menu:zsh'],
	\ ['Format code', 'FormatCode', 'go,python'],
	\ ]

call denite#custom#var('menu', 'menus', s:menus)

"" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
		\ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Specify multiple paths in grep source
"call denite#start([{'name': 'grep',
"      \ 'args': [['a.vim', 'b.vim'], '', 'pattern']}])

" Define alias
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#var('file/rec/py', 'command',['scantree.py'])

call denite#custom#alias('source', 'grep/py', 'grep')
call denite#custom#var('grep/py', 'command', ['ag'])
call denite#custom#var('grep/py', 'default_opts',['--python'])
call denite#custom#var('grep/py', 'recursive_opts', [])
call denite#custom#var('grep/py', 'pattern_opt', [])
call denite#custom#var('grep/py', 'separator', ['--'])
call denite#custom#var('grep/py', 'final_opts', [])

" Change ignore_globs
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

" Custom action
" Note: lambda function is not supported in Vim8.
call denite#custom#action('file', 'test',
      \ {context -> execute('let g:foo = 1')})
call denite#custom#action('file', 'test2',
      \ {context -> denite#do_action(
      \  context, 'open', context['targets'])})


autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction
