syntax on
set ruler
set mouse =
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"Unbind arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
