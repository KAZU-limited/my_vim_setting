" Denite Setting

nnoremap <A-f>f :Denite file<CR>
nnoremap <A-f>m :Denite file_mru<CR>
nnoremap <A-f>b :Denite buffer -buffer-name='horizontal'<CR>
nnoremap <A-f>l :Denite line -buffer-name='line'<CR>
nnoremap <A-f>r :Denite file/rec<CR>
nnoremap <A-f>R :Denite register -buffer-name='horizontal'<CR>
nnoremap <A-f>y :Denite neoyank -buffer-name='horizontal'<CR>
nnoremap <A-f>o :Denite file/old<CR>
nnoremap <A-f>gn :Denite grep<CR>
nnoremap <A-f>gp :Denite grep/py<CR>
nnoremap <A-f>gs :Denite grep/sql<CR>
nnoremap <A-f>ch :Denite change<CR>
nnoremap <A-f>k :Denite d-bookmark -buffer-name='horizontal'<CR>
nnoremap <A-f>co :Denite command<CR>
nnoremap <A-f>ch :Denite command_history -buffer-name='horizontal'<CR>
nnoremap <A-f>h :Denite help<CR>

call denite#custom#kind('buffer', 'default_action', 'open')
call denite#custom#kind('file', 'default_action', 'split')

augroup denite_setting
	autocmd FileType denite call s:denite_my_settings()
	function! s:denite_my_settings() abort
	  nnoremap <silent><buffer><expr> <CR>
	  \ denite#do_map('do_action')
	  nnoremap <silent><buffer><expr> d
	  \ denite#do_map('do_action', 'delete')
	  nnoremap <silent><buffer><expr> p
	  \ denite#do_map('do_action', 'preview')
	  nnoremap <silent><buffer><expr> x
	  \ denite#do_map('do_action','defx')
	  nnoremap <silent><buffer><expr> q
	  \ denite#do_map('quit')
	  nnoremap <silent><buffer><expr> i
	  \ denite#do_map('open_filter_buffer')
	  nnoremap <silent><buffer><expr> <Space>
	  \ denite#do_map('toggle_select').'j'
	  nnoremap <silent><buffer><expr> r
	  \ denite#do_map('redraw')
	  nnoremap <silent><buffer><expr> R
	  \ denite#do_map('restart')
	  nnoremap <silent><buffer><expr> a
	  \ denite#do_map('add')
	  nnoremap <silent><buffer><expr> o
	  \ denite#do_map('open')
	endfunction

	autocmd FileType denite-filter call s:denite_filter_my_settings()
	function! s:denite_filter_my_settings() abort
	  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
	endfunction

augroup end 

call denite#custom#var('file/rec', 'command',
\ ['rg', '--files', '--glob', '!.git'])

call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])

call denite#custom#source(
\ 'file/rec', 'sorters', ['sorter/sublime'])

call denite#custom#kind('file', 'default_action', 'split')

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

call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep','--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])

call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#var('file/rec/py', 'command',['scantree.py'])

call denite#custom#alias('source', 'grep/py', 'grep')
call denite#custom#var('grep/py', 'command', ['rg'])
call denite#custom#var('grep/py', 'default_opts', ['-i', '--vimgrep','--no-heading','-tpy'])
call denite#custom#var('grep/py', 'recursive_opts', [])
call denite#custom#var('grep/py', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep/py', 'separator', ['--'])
call denite#custom#var('grep/py', 'final_opts', [])

call denite#custom#alias('source', 'grep/sql', 'grep')
call denite#custom#var('grep/sql', 'command', ['rg'])
call denite#custom#var('grep/sql', 'default_opts', ['-i', '--vimgrep','--no-heading','-tsql'])
call denite#custom#var('grep/sql', 'recursive_opts', [])
call denite#custom#var('grep/sql', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep/sql', 'separator', ['--'])
call denite#custom#var('grep/sql', 'final_opts', [])

call denite#custom#var('line', 'command', ['rg'])
call denite#custom#var('line', 'default_opts', ['-i', '--vimgrep','--no-heading'])
call denite#custom#var('line', 'recursive_opts', [])
call denite#custom#var('line', 'separator', ['--'])
call denite#custom#var('line', 'final_opts', [])

call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

call denite#custom#action('file', 'test',
      \ {context -> execute('let g:foo = 1')})
call denite#custom#action('file', 'test2',
      \ {context -> denite#do_action(
      \  context, 'open', context['targets'])})

call denite#custom#option('default', {
\ 'auto_action': 'preview',
\ 'floating_preview': v:false,
\ 'split': 'vertical',
\ 'direction': 'aboveleft',
\ 'preview_width':100,
\ 'preview_height':50,
\ 'vertical_preview': v:true,
\ 'start_filter': v:false,
\ 'search': v:false
\ })

call denite#custom#option('neoyank', {
\ 'auto_action': 'preview',
\ 'floating_preview': v:false,
\ 'split': 'horizontal',
\ 'direction': 'botright',
\ 'preview_width':100,
\ 'preview_height':50,
\ 'vertical_preview': v:true,
\ 'start_filter': v:false,
\ 'search': v:false
\ })

call denite#custom#option('line', {
\ 'split': 'vertical',
\ 'direction': 'aboveleft',
\ 'start_filter': v:false,
\ 'search': v:false
\ })

