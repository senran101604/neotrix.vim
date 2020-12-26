" **********************************************************************************************************************************
" Filename:      neotrix.vim
" Last Modified: 2020 Christmas
" Maintainer:    senran (senran@gmail.com)
" Copyright:     This script is free software; you can redistribute it and/or
"                modify it under the terms of the GNU General Public License as
"                published by the Free Software Foundation; either version 2 of
"                the License, or (at your option) any later version.
" Description:   commander Vim\Neovim colorscheme.
" Usage:  set termguicolors
" **********************************************************************************************************************************
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "neotrix"
hi Cursor        guifg=#1d2021 guibg=#ffffff
hi CursorIM      guifg=#1d2021 guibg=#336633
hi CursorColumn  guibg=#663333
hi ColorColumn          guibg=#1d2021
hi CursorLine    guibg=#1d2021
hi Comment       guifg=#00ff00
hi Constant      guifg=#CB4335
hi Debug         guifg=#dc0000 guibg=#1d2021
hi DiffAdd       guifg=#1d2021 guibg=#007200
hi DiffChange    guifg=#1d2021 guibg=#007200
hi DiffDelete    guifg=#1d2021 guibg=#007200
hi DiffText      guifg=#28B463 guibg=#1d2021
hi Directory     guifg=#336633 guibg=none
hi Error         guifg=#1d2021 guibg=#dc0000
hi ErrorMsg      guifg=#ffffff guibg=#dc0000
hi Folded        guifg=#20de20 guibg=#1d2021
hi FoldColumn    guifg=#20de20 guibg=#1d2021
hi Function      guifg=#73C6B6
hi Identifier    gui=none guifg=#FD971F
hi Ignore        guifg=#33bb33
hi IncSearch     guifg=#1d2021 guibg=#FD971F
hi LineNr        guifg=#D4AC0D
hi MatchParen    guifg=#2ECC71
hi ModeMsg       gui=none
hi MoreMsg       gui=none
hi NonText       guifg=#b26818
hi Normal        guifg=#FBF1C7 guibg=#1A1A17

hi Pmenu         guifg=#239b56 guibg=#282828
hi PmenuSel      guifg=#1d2021 guibg=#999999
hi PmenuSbar     guifg=#1d2021 guibg=#337733
hi PmenuThumb    guifg=#999999 guibg=#1d2021

hi PreProc       guifg=#239b56
hi Question      gui=none guifg=#F1C40F
hi Search        guifg=#1d2021 guibg=#FD971F
hi SignColumn    guifg=#239b56 guibg=#1d2021
hi Special       guifg=#2ECC71
hi SpecialKey    guifg=#2ECC71
if has("spell")
    hi SpellBad      gui=undercurl guisp=#ff0000
    hi SpellCap      gui=undercurl guisp=#00ffff
    hi SpellLocal    gui=undercurl guisp=#0000ff
    hi SpellRare     gui=undercurl guisp=#2ECC71
endif
hi Structure                            guifg=#2ECC71
hi Statement     gui=none               guifg=#F4D03F
hi StatusLine    gui=none guibg=#228822 guifg=#1d2021
hi StatusLineNC  gui=none guibg=#336633 guifg=#1d2021
hi TabLine       guibg=#1d2021 guifg=#228822
hi TabLineFill   guibg=#1d2021 guifg=#226622
hi TabLineSel    guibg=#228822 guifg=#1d2021
hi Title         guifg=#2ECC71 guibg=none
hi Todo          gui=bold guibg=#336633 guifg=#FFFFFF
hi Type          gui=none      guifg=#458588
hi Underlined    gui=underline guifg=#336633
hi Visual                      guibg=#3c3836
hi VisualNOS     guifg=#1d2021 guibg=#228822
hi VertSplit     guifg=#336633
hi User1         gui=none guibg=#228822 guifg=#FF0000
hi WarningMsg    guifg=#1d2021 guibg=#007a7a
hi WildMenu      guifg=#000099 guibg=#28B463

" **********************************************************************************************************************************
" Common groups that link to other highlight definitions.

hi link Character      Constant
hi link Number         Function
hi link Boolean        Function
hi link String         Constant

hi link Operator       LineNr

hi link Float          Number

hi link Define         PreProc
hi link Include        PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc

hi link Repeat         Question

hi link Conditional    Repeat

hi link Delimiter      Special
hi link SpecialChar    Special
hi link SpecialComment Special
hi link Tag            Special

hi link Exception     Statement
hi link Keyword       Statement
hi link Label         Statement

hi link StorageClass  Type
hi link Structure     Type
hi link Typedef       Type

" **********************************************************************************************************************************
