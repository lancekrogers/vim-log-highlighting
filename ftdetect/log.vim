
au BufNewFile,BufRead *.log set filetype=log
au BufNewFile,BufRead *_log set filetype=log
au BufNewFile,BufRead *.LOG set filetype=log
au BufNewFile,BufRead *_LOG set filetype=log


" BEGIN LANCE RANDOM VIMSCRIPT CONFIG STUFF
"  Original Ag command bound to  AgJS aka ag jump search
if executable('ag') 
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

command -nargs=+ -complete=file -bar AgJS silent! grep! <args>|cwindow|redraw!
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>
" END LANCE RANDOM VIMSCRIPT CONFIG STUFF
