set imdisable
set ignorecase
" set autochdir
set termguicolors
set cursorline
set ambiwidth=double
set noswapfile

" set shell=powershell shellquote= shellpipe=\| shellxquote=
" set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
" set shellredir=\|\ Out-File\ -Encoding\ UTF8
" set autochdir
"inoremap <ESC> <ESC>:set iminsert=0<CR>:set imsearch=0<CR>
"
"
autocmd! BufNewFile,BufRead *.html nnoremap <C-s> :!xdg-open %<CR>

nnoremap rn :f \|call delete(expand('#')) \|w<Home><Right>
nnoremap tn :tabnew<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT
"
nnoremap <C-TAB> gt 
nnoremap <C-S-TAB> gT 
tnoremap <C-TAB> gt 
tnoremap <C-S-TAB> gT 

inoremap <C-s> <Home>
inoremap <C-e> <End>
nnoremap <Space> i<Space><Esc>
nnoremap <A-f><A-f> :%s///gc<Left><Left><Left>
nnoremap <A-f><A-b> :,$s///gc<Left><Left><Left>
nnoremap <C-j> o<Esc>
nnoremap <CR> i<CR><Esc>
nnoremap <S-CR> <S-o><Esc>
nnoremap ss :source<Space>$XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap so :e $XDG_CONFIG_HOME/nvim/init.vim<CR>
" nnoremap po :tabnew<CR>:e $XDG_CONFIG_HOME/nvim/python.vim<CR>
nnoremap \b :bd!<CR>
nnoremap bd :bd!<CR>
nnoremap <Esc><Esc> :noh<CR>
nnoremap <C-0> i<Space>\<C-j><Esc>
nnoremap <A-j> :normal ]m<CR>
nnoremap <A-k> :normal [m<CR>
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j

" nnoremap <C-p> :bprevious<CR>
" nnoremap <C-n> :bnext<CR>


set clipboard+=unnamedplus
"set clipboard+=unnamed
" set timeout timeoutlen=250
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
" nmap <C-s> <Plug>(HelloWorld)
" nmap pe <Plug>(deol_execute_line)

let g:deol#prompt_pattern = '% \|%$'

" let g:project_dir ='\neovim_plugin\repos\github.com\Shougo\'
" let g:denite#bookmark_info='C:\Neovim\bookmark.txt'
let g:denite#bookmark_info='C:\Neovim\bookmark.txt'

"let g:previm_open_cmd = 'open -a Google\ Chrome'
let g:previm_open_cmd = 'start'
let g:previm_enable_realtime = 1

nnoremap <A-h> :!xdg-open %<CR>

set tags =.\tags;

if has('win32') || has('win64')
	cd C:\Projects\
	let plugin_dir = 'C:\Neovim\plugin\'
" 	let g:python3_host_prog = 'C:\ProgramData\Anaconda3\python.exe'
	let g:python3_host_prog = 'C:\ProgramData\Anaconda3\envs\main_env\python.exe'
	let g:python_host_prog='C:\Python27\python.exe'
	set runtimepath+=C:\Neovim\plugin\repos\github.com\Shougo\dein.vim

	nmap <C-/> <Plug>(caw:zeropos:toggle)
	vmap <C-/> <Plug>(caw:zeropos:toggle)
elseif has('unix')

	set runtimepath+=~/.nvim/repos/github.com/Shougo/dein.vim
	let plugin_dir = '~/.nvim/repos'
	let g:python3_host_prog = '/usr/bin/python3'
	nmap <C-_> <Plug>(caw:zeropos:toggle)
	vmap <C-_> <Plug>(caw:zeropos:toggle)
endif

" nnoremap cp :cd C:\neovim_plugin<CR>
" nnoremap cp :cd expand(plugin_dir)<CR>
"

"set runtimepath+=C:\Projects\d-bookmark

call dein#begin(plugin_dir)

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('chrisbra/csv.vim')
call dein#add('mechatroner/rainbow_csv')
call dein#add('liuchengxu/vista.vim')
call dein#add('tyru/caw.vim')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('iamcco/markdown-preview.nvim')
call dein#add('plasticboy/vim-markdown')
call dein#add('previm/previm')
call dein#add('cespare/vim-toml')
call dein#add('simeji/winresizer')
" call dein#add('vim-jp/vimdoc-ja')
call dein#add('mattn/vim-sqlfmt')

call dein#add('Shougo/deol.nvim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/defx.nvim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neoyank.vim')
"
"" colorscheme
call dein#add('tomasiser/vim-code-dark')
call dein#add('vivkin/flatland.vim')
call dein#add('cocopon/iceberg.vim')
call dein#add('marciomazza/vim-brogrammer-theme')
call dein#add('jonathanfilip/vim-lucius')
call dein#add('altercation/vim-colors-solarized')
call dein#add('icymind/NeoSolarized')
call dein#add('lifepillar/vim-solarized8')
call dein#add('w0ng/vim-hybrid')

call dein#add('neoclide/coc.nvim', { 'merged': 0 })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

"if dein#check_install()
" call dein#install()
"endif

nnoremap cdc :call dein#check_clean()<CR>
nnoremap cdr :call dein#recache_runtimepath()<CR>

tnoremap <Esc> <C-\><C-n>
nnoremap gl :tabnew<CR>:terminal w3m https://eow.alc.co.jp/search?q=""<Left><C-r>0<CR>
nnoremap gs :tabnew<CR>:terminal googler <C-r>0<CR>

source $XDG_CONFIG_HOME/nvim/colorscheme.vim
source $XDG_CONFIG_HOME/nvim/python.vim
source $XDG_CONFIG_HOME/nvim/denite.vim
source $XDG_CONFIG_HOME/nvim/defx.vim

source $XDG_CONFIG_HOME/nvim/coc_setting.vim
" source $XDG_CONFIG_HOME/nvim/R.vim
" source $XDG_CONFIG_HOME/nvim/autopep8.vim
" call coc#util#install()

nnoremap ggb :Gblame<CR>

if exists('did_load_csvfiletype')
  finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END

nnoremap <F8> :Vista<CR>

let g:vista_default_executive = 'ctags'
let g:vista_sidebar_position = 'vertical topleft'

" autocmd FileType python nnoremap <C-l> :call CocAction('format')<CR>
