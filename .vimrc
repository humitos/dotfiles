syntax on               " habilita la sintaxis
set nu                  " muestra los numeros al costado
set tabstop=4           " cada tab significa 4 espacios
set showmatch           " muestra las coincidencias al realizar una búsqueda
set incsearch           " muestra el match mientras vas buscando
set expandtab           " cambia los tabs por espacios
set ruler               " siempre muestra el cursor
set vb t_vb=            " no hace el sonido de la campana
set textwidth=80        " ancho de letras 80 caracteres
set mouse=a             " habilita el mouse

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

