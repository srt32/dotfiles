execute pathogen#infect()
syntax enable
filetype plugin indent on

syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" set leader to .
let mapleader=","

" whitespace
autocmd syntax * SpaceHi
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" coffeescript whitespace
autocmd FileType coffee set tabstop=2|set shiftwidth=2|set expandtab
" autocmd BufWritePost *.coffee CoffeeLint | vertical cwindow

" ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" tabs / spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" swp files
set noswapfile

" get access to bash aliases
set shell=bash\ --login
set shellcmdflag=-ic

" hide pyc files
let g:netrw_list_hide= '.*\.pyc$'

" ctrlp.vim
" let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git\|dist'

" bind K to grep word under cursor
nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" map F2 to srcgraph examples
" https://github.com/sourcegraph/sourcegraph-vim
nnoremap <F2> :GRAPH<CR>

" enable goimports via vim-go
let g:go_fmt_command = "goimports"

" go commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
