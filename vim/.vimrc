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
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
imap <C-Left> <Esc>:tabprev<CR>
imap <C-Right> <Esc>:tabnext<CR>

set ls=2

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
