if terminal_position=='h'

	nnoremap ry :vsplit<CR>:Deol<CR>R --quiet<CR><C-\><C-n><C-w><S-l><C-w>h
	nnoremap pb <C-w>l:bd!<CR>
	nnoremap cmd :vsplit<CR>:Deol<CR><C-\><C-n><C-w><S-l><C-w>h
	nnoremap pw :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>l<S-g><C-w>h
	nnoremap pq :call deol#send('python ' . expand("%:p"))<CR><C-w>l<S-g><C-w>h
	nnoremap pe :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h
	vnoremap pe :call deol#send(getline('.'))<CR><C-w>l<S-g><C-w>h

elseif terminal_position=='v'

	nnoremap ry :vsplit<CR>:Deol<CR>R --quiet<CR><C-\><C-n><C-w><S-j><C-w>k
	nnoremap pb <C-w>j:bd!<CR>
	nnoremap cmd :vsplit<CR>:Deol<CR><C-\><C-n><C-w><S-j><C-w>k
	nnoremap pw :call deol#send('exec(open(r"' . expand("%:p") . '","rb").read())')<CR><C-w>j<S-g><C-w>k
	nnoremap pq :call deol#send('python ' . expand("%:p"))<CR><C-w>j<S-g><C-w>k
	nnoremap pe :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k
	vnoremap pe :call deol#send(getline('.'))<CR><C-w>j<S-g><C-w>k

endif



