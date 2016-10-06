" Using Vundle for vim plugins
" https://github.com/VundleVim/Vundle.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" START Standard Vundle prelude

set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" *** END Standard Vundle prelude
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" User plugins here

Plugin 'louispan/esoteric-vim'
if filereadable(expand("~/.vim/bundle/esoteric-vim/bundle/bundle.vim"))
    source ~/.vim/bundle/esoteric-vim/bundle/bundle.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" *** START Standard Vundle conclusion

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" *** END Standard Vundle conclusion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" User settings here
call esoteric#esoteric#setup()

" Color settings
" color monokai-black
colors zenburn
" zenburn selection is too dark
hi Visual        guibg=#2247c4  ctermbg=26
hi VisualNOS     guibg=#2247c4  ctermbg=26
