function! RedrawModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi MyStatuslineAccent guifg=#000000 gui=none guibg=#FFFFFF ctermfg=000 ctermbg=none
    hi MyStatuslineFilename guifg=#000000 gui=none guibg=#FFFFFF ctermfg=015 ctermbg=000
    hi MyStatuslineAccentBody guibg=#292b34 gui=none guifg=#7ed491 ctermfg=015 ctermbg=000
  " Insert mode
  elseif a:mode == 'i'
    hi MyStatuslineAccent guifg=#292b34 gui=none guibg=none
    hi MyStatuslineFilename guifg=#c0c0c0 gui=none guibg=#585e74
    hi MyStatuslineAccentBody guibg=#292b34 gui=none guifg=#f9929b ctermfg=124 ctermbg=000

  elseif a:mode == 'R'
    hi MyStatuslineAccent guifg=#292b34 gui=none guibg=none
    hi MyStatuslineFilename guifg=#c0c0c0 gui=none guibg=#585e74
    hi MyStatuslineAccentBody guibg=#292b34 gui=none guifg=#fbdf90
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
    hi MyStatuslineAccent guifg=#292b34 gui=none guibg=none
    hi MyStatuslineFilename guifg=#000000 gui=none guibg=#FFFFFF
    hi MyStatuslineAccentBody guibg=#000000 gui=none guifg=#FFFFFF
  endif

  return ''
endfunction
" }}}

function! SetFiletype(filetype) " {{{
  if a:filetype == ''
      return '-'
  else
      return a:filetype
  endif
endfunction
" }}}

set statusline=%{RedrawModeColors(mode())}
" Left side items
" =======================
set statusline+=%#MyStatuslineAccent#
set statusline+=%#MyStatuslineAccentBody#\ 
" Filename
set statusline+=%#MyStatuslineFilename#\ %.20f
set statusline+=%#MyStatuslineSeparator#\ 
" Git Status
set statusline+=%=
" Line and Column
set statusline+=%#MyStatuslineLineCol#
set statusline+=%#MyStatuslineLineColBody#惡\ %2l
set statusline+=\/%#MyStatuslineLineColBody#%2c
set statusline+=%#MyStatuslineLineCol#
" Padding
set statusline+=\ 
" Current scroll percentage and total lines of the file
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=%#MyStatuslinePercentageBody#☰\ %P
"set statusline+=\/\%#MyStatuslinePercentageBody#%L
"set statusline+=%#MyStatuslinePercentage#
"set statusline+=\ 
" Filetype
set statusline+=%#MyStatuslineFiletype#
set statusline+=%#MyStatuslineFiletypeBody#%{SetFiletype(&filetype)}
set statusline+=%#MyStatuslineFiletype#


" Setup the colors
hi StatusLine          guifg=#000000       guibg=#FFFFFF  gui=NONE
hi StatusLineNC        guifg=#000000    guibg=#FFFFFF     gui=bold

hi MyStatuslineSeparator guifg=#585e74 gui=none guibg=none ctermfg=000 ctermbg=none

hi MyStatuslineModified  guifg=#585e74 gui=none guibg=none
hi MyStatuslineFiletype guibg=NONE gui=NONE guifg=#585e74 ctermfg=000 ctermbg=none
hi MyStatuslineFiletypeBody guifg=#ccaced gui=bold guibg=#585e74 ctermfg=124 ctermbg=000

hi MyStatuslinePercentage guifg=#585e74 gui=NONE guibg=NONE
hi MyStatuslinePercentageBody guibg=#585e74 gui=none guifg=#c0c0c0

hi MyStatuslineLineCol guifg=#585e74 gui=NONE guibg=NONE ctermfg=000 ctermbg=none
hi MyStatuslineLineColBody guibg=#585e74 gui=none guifg=#c0c0c0 ctermfg=015 ctermbg=000
