" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Pathogen and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.


" Pathogen (This must happen first.)
" --------

execute pathogen#infect()

set nocompatible                " Don't maintain compatibility with vi
syntax on                       " Highlight known syntaxes
filetype on
filetype plugin indent on


" Source initialization files
" ---------------------------

runtime! init/**.vim


" Machine-local vim settings - keep this at the end
" --------------------------
silent! source ~/.vimrc.local

" Avoid infinite loops when the pwd is $HOME
if !(getcwd() == $HOME)
  if filereadable(".vimrc")
    source .vimrc
  endif
  set runtimepath+=./.vim
endif
