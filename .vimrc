" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'initrc/eclim-vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'dkprice/vim-easygrep'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-sleuth'
Plugin 'kien/ctrlp.vim'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on 
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd 	" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set colorcolumn=80
highlight ColorColumn ctermbg=Black
set textwidth=80
set backspace=indent,eol,start
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number		"Show line numbers
set expandtab	"<BS> will delete a 'shiftwidth' worth of spaces at the beginning of a line.
set tabstop=2		" Number of spaces that a <Tab> in the file counts for.  
set softtabstop=2
set shiftwidth=2    " 'shiftwidth'. 'tabstop' is used in other places.  A
set autoindent
set smarttab		" When on, a <Tab> in front of a line inserts blanks according to
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                        " automatic formatting is to be done.
                        "
                        " letter    meaning when present in 'formatoptions'
                        " ------    ---------------------------------------
                        " c         Auto-wrap comments using textwidth, inserting
                        "           the current comment leader automatically.
                        " q         Allow formatting of comments with "gq".
                        " r         Automatically insert the current comment leader
                        "           after hitting <Enter> in Insert mode.
                        " t         Auto-wrap text using textwidth (does not apply
						"                         "           to comments)
"The following section is dedicated to key mappings
nmap <A-Left> :tabp<CR>
nmap <A-Right> :tabn<CR>
imap <A-Left> <C-[>:tabp<CR>
imap <A-Right> <C-[>:tabn<CR>
nmap <C-Left> ^
nmap <C-Right> <End>
imap <C-Left> <C-[>^i
imap <C-Right> <End>
nmap <S-Left> B
nmap <S-Right> E
imap <S-Left> <C-[>Bi
imap <S-Right> <C-[>Ei
map <C-n> :NERDTreeToggle<CR>
map <C-]> :TagbarToggle<CR>
set ofu=syntaxcomplete#Complete
let g:EclimCompletionMethod = 'omnifunc'
