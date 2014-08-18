"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Subject: Vim Config file ~/.vimrc
" Author: Bryan Garber da Silva
" Original de = Otavio Correa Cordeiro
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cores e Fontes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Seta o destaque por padrão
syntax on

" Seta o fundo escuro
set background=dark

" Esquema de cores
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme inkpot
colorscheme molokai


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Itens Gerais
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Seta nao compatibilidade com o VI
set nocompatible
" Reconhece os tipos de arquivos.
filetype plugin indent on
" Seta o Shell como Bash
set shell=bash
" Seta o historico para 400 entradas
set history=400
" Seta o autoload de um arquivo quando editado fora do VIM
set autoread
" Deixa o mouse disponível em modo de inserção.
set mouse=i
" Botao direito no Linux
set mousemodel=popup
" Coloca o cursor na última linha editada desde a última abertura
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mostrar a posicao corrente
set ruler
" Mostrar a numeracao de linha
set nu!
" Arruma problemas com o BackSpace (Alguns linux)
set backspace=eol,start,indent
" Ignora CASE quando buscando
set ignorecase
set incsearch
" Seta o Modo de Magica
set magic
" Sem avisos de erro
set noerrorbells
set novisualbell
set t_vb=
" Mostra os pares de parenteses...
set showmatch
" Ativa destaque na busca
set hlsearch
" Menumaluco
set wildmenu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some shortcut keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Marcar uma linha
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

" Ctags support!
set tags=./tags,../tags,../../tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
imap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-f> :vertical split<CR>:exec("tag ".expand("<cword>"))<CR>
imap <C-f> :vertical split<CR>:exec("tag ".expand("<cword>"))<CR>

" Expand e Squeeze (extender de diminuir uma janela)
map <C-w>e 100<C-w>+
imap <C-w>e 100<C-w>+
map <C-w>s 100<C-w>-
imap <C-w>s 100<C-w>-

" I hate to type a lot just to get to the next/previous quickfix result
map <Leader>qo :copen<CR>
map <Leader>qc :cclose<CR>
map <Leader>qn :cnext<CR>
map <Leader>qp :cprevious<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Barra de Status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Starts the statusline
set laststatus=2

" Format the statusline
set statusline=\ %t%m%r%h\ %w\ %=%l,%c\ \(%p%%\)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comentários
autocmd BufNewFile,BufRead *.js,*.htc,*.c,*.tmpl inoremap $c /***<cr><BS>***/<esc>O
" Eu
iab xdata <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
iab xnome Bryan Garber da Silva


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Arquivos e backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Desliga tudo
set nobackup
set nowb
set noswapfile
set noar


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sem Folding, por favor!
set nofen

" Fold method
set foldmethod=syntax


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set expandtab
set lbr


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Auto indent
set ai

"Smart indent
set si

"C-style indenting
set cindent

"Wrap lines
"set wrap
set nowrap

"Mostrar tabs e spaces!
set listchars=tab:»·,trail:·
set list!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto completar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

function TexFunctions()
    "set tw=70
    imap ( ()<Left>
    imap [ []<Left>
    imap { {}<Left>
    imap " <C-V>"<C-V>"<left>
endfunction
au FileType tex,bib call TexFunctions()

function CFuncoes()
    set nowrap
    imap ( ()<Left>
    imap [ []<Left>
    imap { {<CR>}<Up><End><CR>
endfunction
au FileType h,c,cpp,java,perl,rb call CFuncoes()

"Map frequent used printk
inoremap printk printk(KERN_ERR "[bgarber] %s:%d \n",<CR>__FUNCTION__, __LINE__);

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" txt2tags usage ;)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.t2t set ft=txt2tags


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" on CGI files, set the filetype as haserl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.cgi set ft=haserl


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuracoes gráficas (gvim) para cada OS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    win 90 50

    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T

    if has("unix")
        set guifont=Monospace\ 10
    else
        set guifont=Lucida\ Console:h9
    endif
endif

