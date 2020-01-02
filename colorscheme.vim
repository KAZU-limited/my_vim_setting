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
autocmd FileType python syntax match txtstring /self/ 
autocmd FileType python highlight link txtString Special 
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
