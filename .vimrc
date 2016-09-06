"Pathogen
execute pathogen#infect()

"Color scheme
color desert
set background=dark
"Popup menu color
hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermfg=black


set smartindent 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=0
set autoread
set bs=2

"Search path for gf command
"let &path.="src/include,/usr/include/AL,"

"Execute rc in current folder and secure mode
set exrc
set secure

" filetype indent on

" syntax on

set ruler

set showcmd

set showmatch

set ignorecase
set incsearch
"set hlsearch

set number

set nowrap

set guifont=Courier_New:h11

set clipboard=unnamed

"Omni Completion
set omnifunc=syntaxcomplete#Complete

"NERDTree
" let NERDTreeHijackNetrw=1

"SuperTab
let SuperTabClosePreviewOnPopupClose=0

" Clang Complete Settings
let g:clang_library_path="/usr2/hunghsin/lib/clang/lib"
let g:clang_use_library=1
" if there's an error, allow us to see it
" let g:clang_complete_copen=1
" let g:clang_complete_macros=1
" let g:clang_complete_patterns=0
" Limit memory use
let g:clang_memory_percent=70
" let g:clang_auto_select=1
" let g:clang_snippets=1
" let g:clang_conceal_snippets=1
" " The single one that works with clang_complete
 let g:clang_snippets_engine='clang_complete'
"
"Special keyword for fast typing
let mapleader = ","

"MRU
nnoremap <unique><Leader>rr : MRU<CR>

"Reload (,rl)
nnoremap <unique><Leader>rl : e<CR>

"Open Directory (,od)
nnoremap <unique><Leader>od : e %:h<CR>

"TComment
noremap <leader>cc :TComment<CR>

"vimrc
nnoremap <unique> <silent> <Leader>rc : e $home/.vimrc<CR>
autocmd! bufwritepost .vimrc source %

"Window
nnoremap <unique> <Leader>sv : vsplit<CR>
nnoremap <unique> <Leader>sh : split<CR>

"Change line
" map <CR><ESC> o<ESC><ESC>
" map <S-Enter><ESC> O<ESC><ESC>

"Save/Open
nnoremap <unique><Leader>ss : w<CR>

"NERDTree
nnoremap <unique> <Leader>oo : NERDTree<CR>

"CTags
map <F5> :!/usr2/hunghsin/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"map <F5> :!/usr2/hunghsin/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f "%:p:h\\tags" <CR>
"TagList
let Tlist_Ctags_Cmd = '/usr2/hunghsin/bin/ctags'
map <unique> <Leader>tt :TlistToggle<CR>

"Window Swap
",ww -> change window -> ,ww 

"SrcExplorer
" // The switch of the Source Explorer
nmap <F8> :SrcExplToggle<CR> 
" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8 
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100 
" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>" 
" // Set "Space" key for back from the definition context
" let g:SrcExpl_gobackKey = "<SPACE>" 
" // In order to avoid conflicts, the Source Explorer should know what plugins " 
" // except itself are using buffers. And you need add their buffer names
" into " 
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
         \ "__Tag_List__", 
         \ "_NERD_tree_" 
     \ ] 
" " // Enable/Disable the local definition searching, and note that this is
" not  " 
" " // guaranteed to work, the Source Explorer doesn't check the syntax for
" now. " 
" " // It only searches for a match with the keyword according to command 'gd'
" " let g:SrcExpl_searchLocalDef = 1 
" " // Do not let the Source Explorer update the tags file when opening
" " let g:SrcExpl_isUpdateTags = 0 
" " // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files'
" to " 
" " //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
" " // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>" 
" " 
" " // Set "<F3>" key for displaying the previous definition in the jump list
let g:SrcExpl_prevDefKey = "<F3>" 
" " // Set "<F4>" key for displaying the next definition in the jump list
let g:SrcExpl_nextDefKey = "<F4>" 

" Change line without engtering editing mode
nmap <S-Enter><S-Enter> O<Esc>j
nmap <CR><CR> o<Esc>k

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

