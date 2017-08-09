autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
set noswapfile
set fenc=utf-8
set showcmd
set number
set smartindent
set showmatch
set tabstop=2
set expandtab
set shiftwidth=2
set ruler
noremap py :w !python
noremap w :w
noremap q :wq!
noremap wq :wq
noremap vs :vsplit
noremap <S-Left> <C-w><<CR>
noremap <S-Right> <C-w>><CR>
noremap <S-h> ^
noremap <S-j> }
noremap <S-k> {
noremap <S-l> $
noremap <CR> A<CR><ESC>

" dein settings {{{
if &compatible
  set nocompatible
endif
" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = expand('~/.pyenv/versions/3.3.6/bin/python3')
let g:python_host_prog = expand('~/.pyenv/versions/2.7/bin/python')

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 管理するプラグインを記述したファイル
  let s:toml = 'dein.toml'
  let s:lazy_toml = 'dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
" プラグインの追加・削除やtomlファイルの設定を変更した後は
" 適宜 call dein#update や call dein#clear_state を呼んでください。
" そもそもキャッシュしなくて良いならload_state/save_stateを呼ばないようにしてください。

" 2016.04.16 追記
" load_cache -> load_state
" save_cache -> save_state
" となり書き方が少し変わりました。
" 追記終わり

" color scheme
colorscheme molokai


" その他インストールしていないものはこちらに入れる
if dein#check_install()
  call dein#install()
endif
" }}}
