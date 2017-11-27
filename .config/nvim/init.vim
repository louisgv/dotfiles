call plug#begin('~/.local/share/nvim/plugged')

" Plugins {
    	" ctrl-p is a fuzzy file finder.
    	Plug 'kien/ctrlp.vim'
   	
	 " airline is a better status line and a tab-bar for nvim.
    	Plug 'bling/vim-airline'
    	
	" gruvbox colorscheme. Seems to work the best for me.
    	Plug 'morhetz/gruvbox'
    	
	" neomake is a code linting tool that runs in the background.
    	Plug 'neomake/neomake'
    	Plug 'maksimr/vim-jsbeautify'
    	Plug 'Chiel92/vim-autoformat'
    	
	" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer' }
    	Plug 'fatih/vim-go'
	Plug 'Shougo/neocomplcache'
    	Plug 'Shougo/neosnippet'
    	Plug 'Shougo/neosnippet-snippets'

    	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   	Plug 'zchee/deoplete-go', { 'do': 'make'}

	Plug 'tmhedberg/SimpylFold'

" }

call plug#end()

" General {
    set smartindent        " Or I let the smartindent take care of it.

    set ttimeout
    set ttimeoutlen=100
    
    set mouse-=a
" }


    set ignorecase          " Make searching case insensitive
    set smartcase           " ... unless the query has capital letters.
    set gdefault            " Use 'g' flag by default with :s/foo/bar/.

    " Use <C-L> to clear the highlighting of :set hlsearch.
    if maparg('<C-L>', 'n') ==# ''
        nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
    endif
" }

" Formatting {
    	set showmatch           " Show matching brackets.
    	set number              " Show the line numbers on the left side.
    	set formatoptions+=o    " Continue comment marker in new lines.
   	set textwidth=0         " Hard-wrap long lines as you type them.
  	set expandtab           " Insert spaces when TAB is pressed.
 	set tabstop=4           " Render TABs using this many spaces.
	set shiftwidth=4        " Indentation amount for < and > commands.

    	set linespace=0         " Set line-spacing to minimum.
	set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

	" Enable folding
	set foldmethod=indent
	set foldlevel=99

	" Enable folding with the spacebar
	nnoremap <space> za
" }

