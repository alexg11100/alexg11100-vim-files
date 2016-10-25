execute pathogen#infect()
syntax enable
filetype plugin indent on
command! NE NERDTree
command! NEC NERDTreeClose

let g:GPGPreferSymmetric = 1

set nu
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader = ","
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set background=dark
colorscheme quantum
let g:quantum_black = 1
let g:user_emmet_leader_key='<C-Z>'
let NERDTreeQuitOnOpen=1
let g:airline_theme='quantum' 
set hlsearch!
let g:ag_working_path_mode="r"
let g:user_emmet_leader_key = '<c-s>'

let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" gvim stuff --------------------{{{
if has("gui_running")
     set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
	 set guioptions-=m  "remove menu bar
	 set guioptions-=T  "remove toolbar
	 set guioptions-=r  "remove right-hand scroll bar
	 set guioptions-=L  "remove left-hand scroll bar
	 set lines=50 columns=100
endif
" }}}
" Mappings ----------------------------- {{{
nnoremap <F5> :GundoToggle<CR>
nnoremap <F4> :NERDTree<CR>
nnoremap <F3> :NERDTreeClose<CR>
nnoremap <F7> :tabr<CR>
nnoremap <F8> :tabl<CR>
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()
nnoremap - ddp
" Shortcut for do and end in Elixir or Ruby
inoremap <leader>do do<enter>end<esc>O<tab>
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>eb :tabe ~/.bashrc<cr>
nnoremap <leader>ez :tabe ~/.zshrc<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
inoremap jk <esc>
nnoremap ; $a
nnoremap <leader>se :mksession! .vims<cr>
nnoremap <leader>rs :source .vims<cr>
nnoremap <leader>ds :call delete(".vims")<cr>
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nnoremap <leader>mp :call Make()<cr>
nnoremap <leader>mr :call MakeRun()<cr>
nnoremap <leader>mc :call MakeClean()<cr>
nnoremap <leader>pb :! pebble build && pebble install<cr>
" }}}
" Vimscript file settings -------------------- {{{
augroup filetype_vim
	 autocmd!
	 autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}
