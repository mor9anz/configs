syntax on
set number
set relativenumber
filetype indent plugin on
set autoindent

set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

set ignorecase
set smartcase

"http://vimcasts.org/episodes/tabs-and-spaces/
set shiftwidth=4
set softtabstop=4
set expandtab


"auto correction
iabbrev reutrn return
iabbrev pirnt print
iabbrev publci public
iabbrev pulbic public

"tabs; not sure why imap is still needed
ca tn tabnew
map <F2> <Esc>:tabprev<CR>
map <F3> <Esc>:tabnext<CR>
imap <F2> <Esc>:tabprev<CR>
imap <F3> <Esc>:tabnext<CR>

set ls=2
map q: :q

"leader
let mapleader = "\<Space>"
noremap <leader>j gt
noremap <leader>k gT
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader><Space> :tablast<cr>

"c
iab cmain #include <stdio.h>
\<CR>
\<CR>int main(int argc, char* argv[]) {
\<CR>
\<CR>return 0;
\<CR>}

"python
iab pymain def main():
\<CR> 
\<CR><BS>if __name__ == "__main__":
\<CR>main()

"java
iab jmain public class XXX{
\<CR>public static void main(String[] args){
\<CR>
\<CR>}
\<CR>}
