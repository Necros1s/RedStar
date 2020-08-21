call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jcherven/jummidark.vim'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'Michal-Miko/vim-mono-red'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
call plug#end()


nnoremap ,<space> :CHADopen<CR>
let g:indentLine_color_term = 124
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = '│ '

colorscheme mono_red
hi Statusline guifg=#af87ff guibg=NONE ctermbg=NONE gui=NONE
hi StatuslineNC guifg=#af87ff guibg=NONE ctermbg=NONE gui=NONE
hi Normal guibg=NONE ctermbg=NONE gui=NONE
syntax enable
source $HOME/.config/nvim/redstarstatus.vim
set noshowmode
