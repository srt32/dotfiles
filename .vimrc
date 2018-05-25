execute pathogen#infect()
syntax enable

set background=light
let g:solarized_termcolors=256
colorscheme solarized

" set leader to space
let mapleader = "\<Space>"

" for https://github.com/thoughtbot/vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" whitespace
" autocmd syntax * SpaceHi
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

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
set wildignore+=*.pyc

" bind K to grep word under cursor
nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" enable goimports via vim-go
let g:go_fmt_command = "goimports"

" go commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
