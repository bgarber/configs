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
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_italic=1
colorscheme gruvbox


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

" Expand & Squeeze (extender de diminuir uma janela)
map <C-w>e 100<C-w>+
imap <C-w>e 100<C-w>+
map <C-w>s 100<C-w>-
imap <C-w>s 100<C-w>-

" I hate to type a lot just to iterate in the quickfix results
nmap ,<Space> :cnext<CR>
nmap ,<Backspace> :cprevious<CR>

" Mappings for tab cicling.
nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load gtags auto map
let Gtags_Auto_Map = 1
let Gtags_Result = "ctags-x"
let Gtags_Efm = "%*\\S%*\\s%l%\\s%f%\\s%m"

" Valgrind plugin
let g:valgrind_arguments = '--track-origins=yes --leak-check=yes'

" Setup cscope output to Quickfix!
set cscopequickfix=s-,c-,d-,i-,t-,e-

" Setup CtrlP options
let g:ctrlp_working_path_mod = ''

" Setup for EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', '*COMMIT_EDITMSG']

" Set airline theme
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 0

" Setup for vim-go
let g:go_fmt_command = 'goimports'
let g:go_fmt_options = {
            \ 'goimports': '-local github.com/glcp',
            \}
let g:go_metalinter_command = 'golangci-lint'
let g:go_metalinter_autosave = 1
let g:go_jump_to_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
"let g:go_debug = ['shell-commands']

" Setup for ALE plugin
let g:ale_lint_on_text_changed = 'never' " check while typing is good, but noisy
let g:ale_virtualtext_cursor = 0
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
"call ch_logfile(expand('/tmp/chlogfile.log'), 'w')

let g:ale_linters = {
            \ 'rust': [ 'analyzer' ]
            \}
let g:ale_linters_ignore = {
            \ 'python': [ 'ruff' ]
            \}
let g:ale_fixers = {
            \ 'rust': [ 'rustfmt' ],
            \ 'go': [ 'goimports' ]
            \}

""" ALE setup for Python
let g:ale_python_auto_poetry = 1
let g:ale_python_flake8_options = '--max-line-length 160 --ignore=E121,E123,E126,E226,E24,E704,W503,W504,E501'
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_python_pylint_options = '--disable=all --enable=duplicate-code --min-similarity-lines=40'

""" ALE setup for Go
let g:ale_go_golangci_lint_package = 1
let g:ale_go_goimports_options = '-local github.com/glcp'

""" ALE setup for Rust

""" Enable the Omni-completion function
set omnifunc=ale#completion#OmniFunc


" Enable auto-rustfmt when saving a file with rust.vim
let g:rustfmt_autosave = 1


" NetRW configurations
let g:netrw_liststyle = 3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Barra de Status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Starts the statusline
set laststatus=2

" Format the statusline
" set statusline=\ %f%m%r%h\ %w%=%l,%c%V\ \(%p%%\)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set cinoptions=l1,g0,:0

"Don't wrap lines
set nowrap

"Mostrar tabs e spaces!
"set listchars=tab:»·,trail:·
set listchars=tab:·\ ,trail:·
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
    set wrap
    imap ( ()<Left>
    imap [ []<Left>
    imap { {}<Left>
    imap " <C-V>"<C-V>"<left>
endfunction
au FileType tex,bib call TexFunctions()

function CFuncoes()
    imap ( ()<Left>
    imap [ []<Left>
    imap { {<CR>}<Up><End><CR>
endfunction
au FileType h,c,cpp,java,perl,go,rust call CFuncoes()


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
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T

    set lines=24 columns=80

    if has("unix")
        set guifont=Fira\ Code\ 12
    else
        set guifont=Lucida\ Console:h10
    endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use 24-bit (true-color) mode in Vim.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("termguicolors"))
    set termguicolors
  endif
endif
