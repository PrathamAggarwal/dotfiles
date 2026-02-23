" ======================
" Keymaps
" ======================
inoremap jk <Esc>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz


" ======================
" UI / Editing
" ======================
set number
set relativenumber
set cursorline

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
filetype plugin indent on

set background=dark
syntax on
set termguicolors


" ======================
" Gruvbox Material settings
" ======================
let g:gruvbox_material_background = 'hard'   " soft | medium | hard
let g:gruvbox_material_foreground = 'mix'    " mix | original
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_ui_contrast = 'low'   " low | high
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_current_word = 'underline'


" ======================
" Plugins
" ======================
call plug#begin()
Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme gruvbox-material


" ======================
" Minimal light statusline
" ======================
set laststatus=2
set noshowmode

set statusline=
set statusline+=\ %{toupper(mode())}
set statusline+=\ %f%m%r
set statusline+=%=
set statusline+=\ %l:%c\ %p%%


" ======================
" Soft-light statusline colors (theme-proof)
" ======================
augroup LightStatusline
  autocmd!
  autocmd ColorScheme * highlight StatusLine   guibg=#fbf1c7 guifg=#3c3836 ctermbg=230 ctermfg=237
  autocmd ColorScheme * highlight StatusLineNC guibg=#ebdbb2 guifg=#665c54 ctermbg=223 ctermfg=241
augroup END
