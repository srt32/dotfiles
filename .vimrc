execute pathogen#infect()
syntax enable
filetype plugin indent on

syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" python linting
autocmd BufWritePost *.py call Flake8()

" whitespace
autocmd syntax * SpaceHi
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" coffeescript whitespace
autocmd FileType coffee set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufWritePost *.coffee CoffeeLint | vertical cwindow

" tabs / spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" swp files
set noswapfile

" get access to bash aliases
set shell=bash\ --login

" JSHint
let jshint2_save = 1

" ctrlp.vim
" let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git\|dist'
