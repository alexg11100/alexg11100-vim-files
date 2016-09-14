execute pathogen#infect()
syntax enable
filetype plugin indent on
command! NE NERDTree
command! NEC NERDTreeClose
set nu
set relativenumber
set tabstop=3
let mapleader = ","
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
set laststatus=2
set background=dark
colo jellybeans
let g:user_emmet_leader_key='<C-Z>'
let NERDTreeQuitOnOpen=1
let g:airline_theme='kalisi'
set hlsearch!
let g:ag_working_path_mode="r"

let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" Mappings ----------------------------- {{{
nnoremap <F5> :GundoToggle<CR>
nnoremap <F7> :tabr<CR>
nnoremap <F8> :tabl<CR>
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()
nnoremap - ddp
" Shortcut for do and end in Elixir or Ruby
inoremap <leader>do do<enter>end<esc>O
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>eb :tabe ~/.bashrc<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
inoremap jk <esc>
" inoremap <esc> <nop>
nnoremap ; $a;<esc>
nnoremap <leader>se :mksession! .vims<cr>
nnoremap <leader>rs :source .vims<cr>
nnoremap <leader>ds :call delete(".vims")<cr>
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" }}}
" Vimscript file settings -------------------- {{{
augroup filetype_vim
	 autocmd!
	 autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}
