set imdisable
set ignorecase
" set autochdir
set termguicolors
set cursorline
" set shell=powershell shellquote= shellpipe=\| shellxquote=
" set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
" set shellredir=\|\ Out-File\ -Encoding\ UTF8
" set autochdir
"inoremap <ESC> <ESC>:set iminsert=0<CR>:set imsearch=0<CR>
"
nnoremap rn :f \|call delete(expand('#')) \|w<Home><Right>
nnoremap tn :tabnew<CR>
" nnoremap tl gt
" nnoremap gr gT
nnoremap <C-n> gt 
nnoremap <C-p> gT 
inoremap <C-s> <Home>
inoremap <C-e> <End>
nnoremap <Space> i<Space><Esc>
nnoremap ff :%s///gc<Left><Left><Left>
nnoremap fb :,$s///gc<Left><Left><Left>
nnoremap <C-j> o<Esc>
nnoremap <CR> a<CR><Esc>
nnoremap <S-CR> <S-o><Esc>
nnoremap ss :source<Space>$XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap so :e $XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap po :tabnew<CR>:e $XDG_CONFIG_HOME/nvim/python.vim<CR>
nnoremap \b :bd!<CR>
nnoremap bd :bd!<CR>
nnoremap <Esc><Esc> :noh<CR>
nnoremap <C-0> i<Space>\<C-j><Esc>
nnoremap <A-j> :normal ]m<CR>
nnoremap <A-k> :normal [m<CR>
" nnoremap <C-p> :bprevious<CR>
" nnoremap <C-n> :bnext<CR>


set clipboard+=unnamedplus
"set clipboard+=unnamed
set timeout timeoutlen=400
              "set wildmode=longest:full,full
set helpheight=100

let g:python_select = 'Normal'
" let g:python_select = 'ipython'

" let g:terminal_position = 'lh'
" let g:terminal_position = 'jk'
let g:terminal_position = 'h'
" let g:terminal_position = 'v'

nnoremap ch :cd %:h<CR>

" deol#send('pandoc ' . expand("%:p") . ' -o ' . expand("%:p:r") . '.pdf -V documentclass=ltjsarticle --pdf-engine=lualatex')<CR>
" nnoremap <silent> mp :vsplit<CR><C-w>l:Deol<CR><C-\><C-n><C-w>hpandoc "%:p"   -o "%:p:r".pdf -V documentclass=ltjsarticle --pdf-engine=lualatex 
nnoremap <silent> mp :vsplit<CR><C-w>l:Deol<CR><C-\><C-n><C-w>h
        \:call deol#send('pandoc ' . expand("%:p") . ' -o ' . expand("%:p:r") . '.pdf -V documentclass=ltjsarticle --pdf-engine=lualatex')
        \<CR>

nnoremap ej :e ++enc=shift-jis<CR>

nnoremap <C-2> i"<Esc>ea"<Esc>
nnoremap <C-7> i'<Esc>ea'<Esc>

nnoremap <Plug>(HelloWorld) :echo "hello world!"<CR>
nmap <C-s> <Plug>(HelloWorld)
nmap pe <Plug>(deol_execute_line)

let g:deol#prompt_pattern = '% \|%$'

nnoremap ne :NeoSnippetEdit<CR>

" let g:project_dir ='~\PycharmProjects'
" let g:project_dir ='\neovim_plugin\repos\github.com\Shougo\'
" let g:denite#bookmark_info='C:\Neovim\bookmark.txt'
let g:denite#bookmark_info='C:\Neovim\_config\nvim\bookmark.txt'

"let g:previm_open_cmd = 'open -a Google\ Chrome'
let g:previm_open_cmd = 'start'
let g:previm_enable_realtime = 1

set tags =.\tags;

if has('win32') || has('win64')
	cd C:\Projects\
	let plugin_dir = 'C:\Neovim\plugin\'
	let g:neosnippet#snippets_directory= plugin_dir . '\repos\github.com\Shougo\neosnippet-snippets\neosnippets\'
" 	let g:python3_host_prog = 'C:\ProgramData\Anaconda3\python.exe'
	let g:python3_host_prog = 'C:\ProgramData\Anaconda3\envs\main_env\python.exe'
	let g:python_host_prog='C:\Python27\python.exe'

	set runtimepath+=C:\Neovim\plugin\repos\github.com\Shougo\dein.vim
	nmap <C-/> <Plug>(caw:zeropos:toggle)
	vmap <C-/> <Plug>(caw:zeropos:toggle)
elseif has('unix')
	let plugin_dir = '~/nvim_dir/plugin/'
	let g:neosnippet#snippets_directory= plugin_dir . '/repos/github.com/Shougo/neosnippet-snippets/neosnippets/'
	let g:python3_host_prog = '/usr/bin/python3'
	set runtimepath+=~/nvim_dir/plugin/repos/github.com/Shougo/dein.vim
	nmap <C-_> <Plug>(caw:zeropos:toggle)
	vmap <C-_> <Plug>(caw:zeropos:toggle)
endif

" nnoremap cp :cd C:\neovim_plugin<CR>
" nnoremap cp :cd expand(plugin_dir)<CR>

tnoremap <Esc> <C-\><C-n>
nnoremap gl :tabnew<CR>:terminal w3m https://eow.alc.co.jp/search?q=""<Left><C-r>0<CR>
nnoremap gs :tabnew<CR>:terminal googler <C-r>0<CR>

"set display=truncate

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
if dein#load_state(plugin_dir)
  call dein#begin(plugin_dir)
  " Let dein manage dein
  " Required:
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/deol.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
"   call dein#add('itchyny/lightline.vim')
"   call dein#add('mengelbrecht/lightline-bufferline')
  call dein#add('skanehira/translate.vim')
"  call dein#add('scrooloose/syntastic')
  call dein#add('chrisbra/csv.vim')
  call dein#add('mechatroner/rainbow_csv')
  call dein#add('liuchengxu/vista.vim')
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
  call dein#add('w0ng/vim-hybrid')
  call dein#add('kmnk/denite-dirmark')
  call dein#add('previm/previm')
"   call dein#add('Volcanic-Ash/denite-bookmark')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('vim-scripts/SyntaxRange')
  call dein#add('cespare/vim-toml')

   call dein#add('Shougo/defx.nvim')

   call dein#add('Shougo/denite.nvim')
   call dein#add('Shougo/deoplete.nvim')
"   call dein#add('Shougo/neomru.vim')
"   call dein#add('Shougo/neoyank.vim')
"   call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next'})
  call dein#add('vim-scripts/dbext.vim')
  call dein#add('kassio/neoterm')
  call dein#add('simeji/winresizer')
  call dein#add('vim-jp/vimdoc-ja')

  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/coc.toml',{'lazy': 0})
"   call dein#load_toml($XDG_CONFIG_HOME . '/nvim/LanguageClient_neovim.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/dein.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/defx.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/denite.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/deoplete.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/colorscheme.toml',{'lazy': 0})
  call dein#load_toml($XDG_CONFIG_HOME . '/nvim/dbext.toml',{'lazy': 0})

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

autocmd! BufNewFile,BufRead *.toml call SyntaxRange#Include("hook_add = '''", "'''", 'vim', '')

" source $XDG_CONFIG_HOME/nvim/denite.vim
source $XDG_CONFIG_HOME/nvim/colorscheme.vim
source $XDG_CONFIG_HOME/nvim/python.vim
source $XDG_CONFIG_HOME/nvim/R.vim
" source $XDG_CONFIG_HOME/nvim/deoplete.vim

" autocmd Filetype python source $XDG_CONFIG_HOME/nvim/python.vim
" autocmd Filetype R source $XDG_CONFIG_HOME/nvim/R.vim
" source $XDG_CONFIG_HOME/nvim/autopep8.vim

" call coc#util#install()

nnoremap cdc :call dein#check_clean()<CR>
nnoremap cdr :call dein#recache_runtimepath()<CR>

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

"" Expand the completed snippet trigger by <CR>.
imap <expr><CR>
\ (pumvisible() && neosnippet#expandable()) ?
\ "\<Plug>(neosnippet_expand)" : "\<CR>"

nnoremap <F8> :Vista<CR>

let g:vista_default_executive = 'ctags'
let g:vista_sidebar_position = 'vertical topleft'

autocmd FileType python nnoremap <C-l> :call CocAction('format')<CR>

" let g:dbext_default_profile_psql_test = 'type=SQLSRV:integratedlogin=1:dbname=myDB'
let g:dbext_default_profile_postgres = 'type=PGSQL:host=localhost:user=postgres:dbname=dvdrental:passwd=post773:port=5432'
let g:dbext_default_profile = 'postgres'
