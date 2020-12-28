" use VIM configurations and not VI configurations
set nocompatible

" enable syntax & plugins(for netrw)
syntax enable
filetype plugin on

" search down into subfolders
set path+=**

" display all matching files when we tab complete
set wildmenu

" basic highlighting
syntax on

" no sound effects on end of line
set noerrorbells

" tab size is set to 4 characters
" set tab to 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4

" convert from tab character to spaces
set expandtab

" tries to indent automatically
set smartindent

" set line number display
set nu

" do not wrap lines
set nowrap

" case sensitive searching
set smartcase

" no swap file
set noswapfile

" no backup file
set nobackup

" set undo directory
set undodir=~/.vim/undodir
set undofile

" enable search while typing
set incsearch

" set 120 column as max column for typing
set colorcolumn=120
"highlight ColorColumn ctermbg=0 guibg=lightgrey


"""""""""""""""""""""""""""""""""""""""""""""""
" source code jumping with ctags
command! MakeTags !ctags -R

" Ctrl is represented as C
" C+] -> jump to tag under cursor
" C+t -> jump back
" g+C+] -> ambitious tags

" Auto complete with ins-completion
" C+x C+n -> completion items from this file
" C+x C+f -> comlete file names
" C+x C+] -> completion from tags
" C+n     -> anything specified by the 'complete' option

" C+n or C+p to navitage the list of auto complete options

"""""""""""""""""""""""""""""""""""""""""""""""
" folder navigations tweaks
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" :edit 

