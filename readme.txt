On Cygwin:
    - copy the bundle and .vimrc to $HOME/

On Linux
    - copy the bundle under /usr/share/vim/vim74/
    - copy the .vimrc under /usr/share/vim/vim74

On GVim for Windows
    - copy pathogen.vim to /c/Program Files (x86)/Vim/vim80/autoload
    - put the .vimrc to $HOME/_vimrc
    - make a dir in /c/Program Files (x86)/Vim/vim80/bundle
    - git clone all plug-ins into bundle

Ctags command
    - Linux/Cygwin: usr/bin/ctags
    - ctags -R *
    - ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

cscope -R -b 
    - the '-R' makes Cscope parse all subdirectories, not just the current directory).  '-b' flag (which tells Cscope to just build the database, then exit
    
