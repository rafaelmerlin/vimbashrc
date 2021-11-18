" Gentil de Bortoli J�nior
" 02/08/2002

" algumas abrevia��es

ab GBJ Gentil de Bortoli J�nior
ab OPS Onda Provedor de Servi�os S/A
ab SOE Sistema Onda de Estat�sticas
ab SODOV Sistema Onda de Dom�nios Virtuais
ab UFPR Universidade Federal do Paran�

" convert all files to unix format and set default fileformat to unix

set ffs=unix
set ff=unix

" fechar essas coisas automaticamente
" isso d� pau no vim 6.0 com solaris 8

inoremap ( ()<ESC>:let leavechar=")"<CR>i
inoremap [ []<ESC>:let leavechar="]"<CR>i
inoremap { {}<ESC>:let leavechar="}"<CR>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

" vamos ignorar os erros de digita��o para sair

cab Wq wq
cab WQ wq
cab Q q
cab W w

" configura��es gerais 

set modelines=0                         " nao vi pra que ser mas corrige um bug
set expandtab
set shiftwidth=8
set sm					" show matching parenthesis
set is hls ic scs magic   	        " incrementedsearch, highlightedsearch, ignorecase, smartcase, magic
set nocompatible			" use vim defaults (much better!)
set backspace=indent,eol,start	        " allow backspacing over everything in insert mode
set autoindent                          " always set autoindenting on
set smartindent				" always set smartindent on
set smarttab
set ts=8				" n�mero de caracteres de avan�o do tab
set hid                 		" hidden
set report=0				" reporta a��es com linhas no rodap�
set showcmd				" mostra comandos incompletos
set laststatus=2    			" mostra n linhas de estado (status)
set showmatch				" avisa quando par�nteses n�o forem fechados
set ruler				" mostra n�mero da linha e coluna no rodap�
set autowrite				" salva automaticamente ap�s comandos como :next e :make
" set incsearch				" busca incrementada
set background=dark			" nem precisa explicar
" set hls				" colore o fundo da palavra rec�m encontrada
set textwidth=0	                        " don't wrap words by default
set nobackup			        " don't keep a backup file
set history=50			        " keep 50 lines of command line history
syntax on			        " ativa syntax highlightning
set ignorecase			" do case insensitive matching
" set number				" numera as linhas
set showmode				" mostra o modo de opera��o atual
set viminfo='20,\"50    		" read/write a .viminfo file, don't store more than
                        		" 50 lines of registers

" sufixos que t�m baixa prioridade ao completar o nome de arquivos
" normalmente s�o arquivos que n�o queremos editar ou ler

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" mostra brancos no final das linhas

syn match branco '\s\+$'
hi branco ctermbg=red

" cores

if &term =~ "xterm" || &term =~ "linux"
	set background=dark
	set t_Co=8
	set t_Sf=^[[3%dm
	set t_Sb=^[[4%dm
endif

" mapeamento - delete key

if &term =~ "xterm"
	set t_kD=^[[3~
endif

" coment�rios - para "ocultar" e voltar os coment�rios do arquivo atual

noremap <F2> :hi Comment ctermfg=black guifg=black<cr>
noremap <F3> :hi Comment term=bold ctermfg=cyan guifg=cyan<cr>

" several maps useful for most terminals

map [A <Up>
map! [A <Up>
map [B <Down>
map! [B <Down>
map [D <Left>
map! [D <Left>
map [C <Right>
map! [C <Right>
map [H <Home>
map! [H <Home>
map OH <Home>
map! OH <Home>
map [F <End>
map! [F <End>
map OF <End>
map! OF <End>
map [3~ <Delete>
map! [3~ <Delete>
