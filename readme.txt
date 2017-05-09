.vimrc

sudo apt-get install ctags
sudo apt-get install cscope

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/Rip-Rip/clang_complete 
git clone https://github.com/vim-scripts/genutils 
git clone https://github.com/llinfeng/mru.vim /mru/ 
git clone https://github.com/wesleyche/SrcExpl 
git clone https://github.com/vim-scripts/SuperTab 
git clone https://github.com/vim-scripts/taglist.vim  
git clone https://github.com/vim-scripts/tComment 
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/wesQ3/vim-windowswap 
git clone https://github.com/MattesGroeger/vim-bookmarks
git clone https://github.com/Valloric/YouCompleteMe


On Cygwin:
    - copy the bundle and .vimrc to $HOME/

On Linux
    - copy the bundle under /usr/share/vim/vim74/
    - copy the .vimrc to $HOME/

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
    
