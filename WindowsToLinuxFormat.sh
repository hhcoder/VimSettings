 find -type f -name '*' -exec sed -i 's/^M//g' {} \;

find ./ -type f -exec dos2unix {} \;

ctags -R *

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

cscope -R (the '-R' makes Cscope parse all subdirectories, not just the current directory). 
