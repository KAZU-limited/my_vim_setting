let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 1
let g:jedi#auto_close_doc = 1
let g:jedi#show_call_signatures =0
let g:jedi#show_call_signatures_delay =0

if python_select=='Normal'

	if terminal_position=='h'

		nnoremap py :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR>python<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap pb <C-w>l:bd!<CR>
		nnoremap cmd :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap pw :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>l<S-g><C-w>h
		nnoremap pq :call deol#send('python ' . expand("%:p"))<CR><C-w>l<S-g><C-w>h
		nnoremap pe :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h
		vnoremap pe :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h

	elseif terminal_position=='v'

		nnoremap py :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR>python<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap pb <C-w>j:bd!<CR>
		nnoremap cmd :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap pw :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>j<S-g><C-w>k
		nnoremap pq :call deol#send('python ' . expand("%:p"))<CR><C-w>j<S-g><C-w>k
		nnoremap pe :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k
		vnoremap pe :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k

	endif


elseif python_select=='ipython'

	if terminal_position=='h'

		nnoremap py :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR>ipython<CR><C-\><C-n><C-w><S-l><C-w>h
		nnoremap pb <C-w>l:bd!<CR>
		nnoremap cmd :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-l><C-w>h

	elseif terminal_position=='v'

		nnoremap py :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR>ipython<CR><C-\><C-n><C-w><S-j><C-w>k
		nnoremap pb <C-w>j:bd!<CR>
		nnoremap cmd :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-j><C-w>k

	endif

	nnoremap pe :call deol#ipython_send(getline('.'))<CR>
	vnoremap pe :call deol#ipython_send(getline('.'))<CR>
	nnoremap pw :call deol#ipython_send('%run ' . expand("%:p"))<CR>

endif

" nnoremap \db :call deol#send('import ' . expand("%:r"))<CR>
" nnoremap pb :vsplit<CR>:Deol<CR>conda activate tf_gpu<CR><C-\><C-n><C-w><S-l>apython -m pdb<Space>
