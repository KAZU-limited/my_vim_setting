colorscheme flatland
"
set background=dark
" colorscheme brogrammer
" colorscheme NeoSolarized
" AirlineTheme solarized
" hi normal guibg=#000000

syntax enable
" set background=light
"
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'

let g:airline_theme = 'codedark'
" let g:airline_theme = 'simple'
" let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#show_tab_count = 5
" let g:airline#extensions#tabline#show_tabs = 5
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#show_splits = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#show_buffers = 9
" let g:airline#extensions#tabline#tab_min_count = 2 

" let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
" let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
" let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
" let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
" let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
" let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
" let g:airline#extensions#tabline#show_buffers = 5      " dont show buffers in the tabline                                                 
" let g:airline#extensions#tabline#tab_min_count = 0     " minimum of 2 tabs needed to display the tabline                                  
" let g:airline#extensions#tabline#show_splits = 5       " disables the buffer name that displays on the right of the tabline               
" let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
" let g:airline#extensions#tabline#show_tab_type = 0   

" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#fnamemod = ':r:.'
let g:airline#extensions#tabline#buffer_nr_format = ':t'
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#whitespace#mixed_indent_algo = 1
" let g:lightline.colorscheme = 'solarized'

" let g:lightline.enable = {
"	\ 'statusline': 1,
"	\ 'tabline': 1
"	\ }
"     \ 'colorscheme': {'solarized'
"     \ },
" let g:lightline = {
"     \ 'colorscheme': 'solarized',
"     \ 'component': {
"     \   'lineinfo': '%3l:%-2v%<',
"     \ },
"     \ 'enable' :{
"	\ 'statusline': 1,
"	\ 'tabline': 1,
"     \ },
"     \ }
"
" let g:lightline.tab = {
"      \ 'active': [ 'tabnum', 'filename', 'modified' ],
"      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
"      \ }
"
" let g:lightline.tab_component_function = {
"      \ 'modified': 'lightline#tab#modified',
"      \ 'readonly': 'lightline#tab#readonly',
"      \ 'tabnum': 'lightline#tab#tabnum' }

" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}

autocmd FileType python syntax match txtstring /self/
autocmd FileType python highlight link txtString Special

" le
" highlight Pmenu ctermbg=239 guifg=#0000FF
" hi Pmenu ctermfg=74 ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
"
" highlight Pmenu ctermbg=239 guibg=#000000 guifg=#0000FF
" highlight PmenuSel ctermbg=6 guifg=red
" highlight PMenuSbar ctermbg=239 guifg=red
"
"highlight Comment ctermfg=20 guifg=Gray

" set hlsearch
hi search guibg=#DDDDDD guifg=#000000
set number
hi ActiveWindow guibg=#17252c
hi InactiveWindow guibg=#0D1B22
hi NormalFloat guifg=#2e3440 guibg=#a3be8c

