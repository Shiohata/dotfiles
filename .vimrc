" キーマップ""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" インサートモード時に<C-H>で一文字削除
inoremap <C-D> <BS>

" インサートモード時に<S-tab>でインデントを下げる
inoremap <S-Tab> <ESC><<i

" 検索結果をハイライト
set hlsearch

" <C-c>2回で検索のハイライト消し
nnoremap  <C-c><C-c> :<C-u>nohlsearch<cr><Esc>

" <C-q>でエスケープ
noremap <C-q> <esc>
noremap! <C-q> <esc>

" 矢印キー無効
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" コマンドライン<C-p>と<C-n>でもフィルタリングできるようにする
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI系"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"シンタックス ハイライト
syntax on

"行番号
set number

"上下8行の視界を確保
set scrolloff=8

"カレント行ハイライト
set cursorline

"カーソルハイライトはカレントウィンドウのみ
autocmd WinEnter * setl cursorline

"カレントウィンドウから離れたらカーソルハイライトを消す
autocmd WinLeave * setl nocursorline

"ステータスラインを常に表示する
set laststatus=2

" ステータスラインに表示する情報の指定
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=

" ステータスラインの色
"highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none
highlight StatusLine   term=NONE cterm=NONE guibg=White guifg=darkyellow ctermfg=darkyellow ctermbg=darkblue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" その他""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" スペルチェック,日本語のスペルチェックは外す
" set spell
set spelllang=en,cjk

"netrwが動作できるようにする
filetype plugin on

"互換モード無効
set nocompatible

"ヘルプ日本語化
set helplang=ja

"OSのクリップボード共有
set clipboard=unnamed

"マウスon
if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif

"BackSpaceで改行を削除できるようにする
set backspace=2

" タブを4スペースで保管
set tabstop=4
set autoindent "オートインデント
set expandtab "タブ文字の代わりに空白(ソフトタブ)
set shiftwidth=4 "オートインデント時にインデントする文字数

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deinでのプラグイン管理""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/unite.vim')

call dein#end()

filetype plugin indent on

