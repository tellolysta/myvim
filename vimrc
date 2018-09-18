let g:clang_compilation_database = './build'
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.5'

":map <F11>  :sp tags<CR>:%s/^\([^	:]*:\)\=\([^	]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><F12>
let mapleader = ','
let g:gitgutter_terminal_reports_focus=0
"tagbar"
"nmap <C-l> :TagbarToggle <CR>
map <C-\> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>
"first tab
nnoremap gh :tabfirst<CR>
"next tab
nnoremap gk :tabnext<CR>
"prev tab
nnoremap gj :tabprev<CR>
"las tab
nnoremap gl :tablast<CR>
"remove highlight
noremap <Leader>h :noh <CR>
"quit file
noremap <Leader>q :quit<CR>
"force quit all files(don't save changes)
noremap <Leader>E :qa!<CR>
"save changes in file
noremap <Leader>w :w<CR>
"open directory with current opened file
noremap <Leader>e :e %:h<CR>
"split
nmap <Leader>s :split <CR>
"vertival split
nmap <Leader>v :vs <CR>
"new tab with file
nmap <Leader>t :tab split <CR>
"move to window down
nmap <c-j> <c-w>j
"move to window up
nmap <c-k> <c-w>k
"move to window left
nmap <c-h> <c-w>h
"move to window righl
nmap <c-l> <c-w>l
"next file from buffer
nnoremap <Leader>d :bnext <CR>
"prev file from buffer
nnoremap <Leader>a :bprev <CR>
"remove trailing spaces
nmap <Leader>x :%s/\s\+$// <CR>
"split two clean lines to one
nmap <Leader>z :%s/\v(\n\s*){2,}/\r\r/ <CR>
"diff to previous version on file
nmap <Leader>g :Gdiff ~1 <CR>
vmap <c-c> "+y <CR>

"DENITE
"move in Denite window using ctrl+t ctrl+g
"find file
nnoremap Uf :Denite file_rec<CR> " -start-insert file_rec<CR>
"find file in buffer
nnoremap Ub :Denite buffer<CR>
nnoremap Ud :Denite gtags/def

"NERD COMMENTER
"basic use:
"<leader>cc - comment line
"<leader>cu - uncomment line



set clipboard=unnamedplus
"WYGLĄD I WYGODA
syntax on                         " Włącza kolorowanie składni
"syntax enable
set t_Co=256
"colo darkblue
"autocmd vimenter * colorscheme desert256  " zmienia schemat kolorów
set background=light
"colorscheme inkpot
hi Normal ctermbg=none

set nocompatible                  " Utawia tryb rozszerzony Vima, zamiast domyślnego, kompatybilnego z Vi
set confirm                       " pytaj o potwierdzenie, zamiast odmawiać wykonania operacji
set cursorline                    " podświetl aktualną linię
set laststatus=2                  "Zawsze pokazuj pasek statusu
set lazyredraw                    "Nie przerysowuj ekranu podczas wykonywania makr, rejestrów itp
set nu
set ruler                         " Display the ruler.
set nowrap                          " noWrap the displayed text.
set rulerformat=%l,%c%V%=#%n\ %3p%% " ustaw zawartość linii statusu

"Włącza autoładowanie wcięć i wtyczek dla poszczególnych typów plików
filetype on                       " Enable file type detection.
filetype plugin on                " Enable file type plug-ins.
filetype plugin indent on         " włącza autoładowanie wcięć i wtyczek dla poszczególnych typów plików

"USTAWIENIA DOTYCZĄCE WCIĘĆ
set tabstop=4                     " Domyślna długość znaku tabulacji
set shiftwidth=4                  " Domyślna długość wcięcia/przesunięcia
set expandtab                     " Automatycznie użyj spacji zamiast znaku tabulacji
set softtabstop=4                 " Set the number of spaces for indentation.
set shiftround
set mouse=a
set smarttab

"Ustawienia wyszukiwania
set ignorecase			              " ignoruj wielkość znaków
set incsearch                     " Highlight matching text while typing.
set hlsearch                      " Highlight all matching patterns.

" Pozostałe ustawienia
set fileencodings=ucs-bom,utf-8,latin1 "ustawienia kodowania plików
set backupcopy=no                 " Do not create backup copies.
set formatoptions=tcqr            " Adjust automatic formatting.
set backspace=indent,eol,start    " Specify the backspace behavior.
set history=1000                  " Specify the number of possible undos.
set nospell                       " Disable spell checking by default.
set shortmess=atToOI              " Skróć niektóre informacje (np. użyj '[New]' zamiast '[New File])

"Nie zapisuj plików backupu/writeback/swapfile
set nobackup
set nowb
set noswapfile

"Editing settings:

set textwidth=0                   " Do not set the default text width.
set linebreak                     " Break lines at a word boundary.
set nojoinspaces                  " Do not insert a second space after a sentence when joining lines.
set autoindent                    " Copy ident from previous lin when starting a new one
set hidden                        " ukryj wszystkie 'nieaktywne' bufory, zamiast usuwać z pamięci
set scrolloff=5                   " zawsze widoczne 5 linii przed i po kursorze
set listchars=tab:▸-,trail:·      " ustaw znaki zastępujące znak tabulatora i białe znaki na końcach linii
set showbreak=>                   " łańcuch znaków które pokazywane są by oznaczyć zwinięte linie
set showcmd                       " pokazuj ostatnią wykonywaną komendę w ostatniej linii edytora
set showmatch                     " gdy zostanie wpisany zamykający nawias skocz na chwilę do otwierającego
set spelllang=pl,en               " ustawinia sprawdzania pisowni
set viewoptions=cursor            " zapisuj w widoku tylko pozycję kursora
set viminfo='20,<1000,h,f0        " Konfiguracja informacji zapisywanych w pliku .viminfo
set wildmenu                      " Pokazuje listę możliwych dopełnień na pasku statusów
set selection=exclusive           " Zaznaczenie bez kursora w trybie wizualnym i zaznaczania
set whichwrap+=<,>,[,]            " Dodaj klawisze kursora do przechodzenia pomiędzy liniami

" ustawienie kursora w miejscu gdzie był przed zamknięciem pliku
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") |
    \ exe "normal `\"" | endif
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0  "zmienia ustawienia kursora

let sherlock#disable=1

execute pathogen#infect()

"NERDTree
"autocmd vimenter * NERDTree
"Uruchomienie przy otwarciu vima bez pliku
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-f> :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>
":q przy ostatnim oknie zamyka wszystko
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinSize = 40

"AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.space = "\u3000"
set laststatus=2

"function! HeaderToggle() " bang for overwrite when saving vimrc
"let file_path = expand("%")
"let file_name = expand("%<")
"let extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot
"let err_msg = "There is no file "
"
"if extension == "cpp"
"    let next_file = join([file_name, ".h"], "")
"
"    if filereadable(next_file)
"    :e %<.h
"    else
"        echo join([err_msg, next_file], "")
"    endif
"elseif extension == "h"
"    let next_file = join([file_name, ".c"], "")
"
"    if filereadable(next_file)
"        :e %<.c
"    else
"        echo join([err_msg, next_file], "")
"    endif
"endif
"endfunction
"
"nnoremap <Leader>r :call HeaderToggle()<CR>

"Od Macka B
"set tags=tags;

" Gtags
let g:Gtags_Auto_Update = 1
"map ^[] :GtagsCursor<CR>
"call denite#custom#default_action('gtags_completion', 'list_definitions')
"noremap <Leader>r :execute 'Denite gtags_path:'.expand("%:t:r").((expand ("%:e") == "cpp") ? '.h' : '.cpp').' -immediately'<CR>
noremap <Leader>r :Denite file_rec -input=`expand('%:t:r').((expand("%:e")=="cpp") ? ".h" : (expand("%:e")=="cc" ? ".hh" : (expand("%:e")=="h" ? ".cpp" : ".cc")))` -immediately<CR>
"noremap <Leader>r :execute 'Denite file_rec -input='.expand("%:t:r").((expand ("%:e") == "cpp") ? '.h' : '.cpp').''''<CR>
let c_no_curly_error=1
colorscheme codedark
hi Cursorline term=none cterm=none ctermbg=236
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
