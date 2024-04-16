" The Silver Searcher

if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " bind K to grep word under cursor
    nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif
