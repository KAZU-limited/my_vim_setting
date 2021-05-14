" let g:jedi#completions_enabled = 0
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 1
" let g:jedi#auto_close_doc = 1
" let g:jedi#show_call_signatures =0
" let g:jedi#show_call_signatures_delay =0

if python_select=='Normal'

	if terminal_position=='h'

" 		nnoremap <A-p>y :vsplit<CR>:Deol<CR>conda activate main_env<CR>python<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap <A-p>y :vsplit<CR>:Deol<CR>python<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap <A-p>b <C-w>l:bd!<CR>
" 		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR>conda activate main_env<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap <A-p>w :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>l<S-g><C-w>h
		nnoremap <A-p>q :call deol#send('python ' . expand("%:p"))<CR><C-w>l<S-g><C-w>h
		nnoremap <A-p>e :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h
		vnoremap <A-p>e :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h

	elseif terminal_position=='v'

" 		nnoremap <A-p>y :vsplit<CR>:Deol<CR>conda activate main_env<CR>python<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap <A-p>y :vsplit<CR>:Deol<CR>python<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap <A-p>b <C-w>j:bd!<CR>
" 		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR>conda activate main_env<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap <A-p>w :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>j<S-g><C-w>k
		nnoremap <A-p>q :call deol#send('python ' . expand("%:p"))<CR><C-w>j<S-g><C-w>k
		nnoremap <A-p>e :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k
		vnoremap <A-p>e :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k

	endif

elseif python_select=='ipython'

	if terminal_position=='h'

		nnoremap <A-p>y :vsplit<CR>:Deol<CR>conda activate main_env<CR>ipython<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap <A-p>b <C-w>l:bd!<CR>
		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR>conda activate main_env<CR><C-\><C-n><C-w><S-l><C-w>h

	elseif terminal_position=='v'

		nnoremap <A-p>y :vsplit<CR>:Deol<CR>conda activate main_env<CR>ipython<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap <A-p>b <C-w>j:bd!<CR>
		nnoremap <A-p>cmd :vsplit<CR>:Deol<CR>conda activate main_env<CR><C-\><C-n><C-w><S-j><C-w>k

	endif

	nnoremap <A-p>e :call deol#ipython_send(getline('.'))<CR>
	vnoremap <A-p>e :call deol#ipython_send(getline('.'))<CR>
	nnoremap <A-p>w :call deol#ipython_send('%run ' . expand("%:p"))<CR>

endif

" nnoremap \db :call deol#send('import ' . expand("%:r"))<CR>
" nnoremap pb :vsplit<CR>:Deol<CR>conda activate main_env<CR><C-\><C-n><C-w><S-l>apython -m pdb<Space>
