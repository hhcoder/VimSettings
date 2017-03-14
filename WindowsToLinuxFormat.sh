find -type f -name '*' -exec sed -i 's/^M//g' {} \;

find ./ -type f -exec dos2unix {} \;

ctags -R *

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

cscope -R -b (the '-R' makes Cscope parse all subdirectories, not just the current directory).  '-b' flag (which tells Cscope to just build the database, then exit
