" **********************************************************************************************************************************
" Filename:      neotrix.vim
" Last Modified: 2020 Christmas
" Author:    SenRan (senran101604@gmail.com)
" Description:   simple and cool Vim\Neovim colorscheme.
" Usage:  set termguicolors
" **********************************************************************************************************************************
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "neotrix"

if exists("g:neotrix_dark_contrast")
    let s:neotrix_dark_contrast = g:neotrix_dark_contrast
else
    let s:neotrix_dark_contrast = "galaxy_medium"
endif

hi Cursor        guifg=#1D2021 guibg=#FFFFFF
hi CursorIM      guifg=#1D2021 guibg=#336633
hi ColorColumn   guibg=#1D2021
hi Comment       guifg=#504945
hi Constant      guifg=#CB4335
hi Debug         guifg=#DC0000 guibg=#1D2021
hi DiffAdd       guifg=#1D2021 guibg=#007200
hi DiffChange    guifg=#1D2021 guibg=#007200
hi DiffDelete    guifg=#1D2021 guibg=#DC0000
hi DiffText      guifg=#28B463 guibg=#1D2021
hi Directory     guifg=#336633 guibg=none
hi Error         guifg=#1D2021 guibg=#DC0000
hi ErrorMsg      guifg=#FFFFFF guibg=#DC0000
hi Folded        guifg=#20DE20 guibg=#1D2021
hi FoldColumn    guifg=#20DE20 guibg=#1D2021
hi Function      guifg=#73C6B6
hi Identifier    gui=none guifg=#FD971F
hi Ignore        guifg=#33bb33
hi IncSearch     guifg=#1D2021 guibg=#FD971F
hi MatchParen    guifg=#2ECC71
hi ModeMsg       gui=none
hi MoreMsg       gui=none
hi NonText       guifg=#FD971F

if s:neotrix_dark_contrast == "galaxy_hard"
    hi Normal        guifg=#FBF1C7 guibg=#17202A
    hi CursorLine    guibg=#1B2631
elseif s:neotrix_dark_contrast == "retro"
    hi Normal        guifg=#FBF1C7 guibg=#1A1A1A
    hi CursorLine    guibg=#282828
else
    hi Normal        guifg=#FBF1C7 guibg=#1B2631
    hi CursorLine    guibg=#17202A
end

hi Pmenu         guifg=#239b56 guibg=#282828
hi PmenuSel      guifg=#1D2021 guibg=#999999
hi PmenuSbar     guifg=#1D2021 guibg=#337733
hi PmenuThumb    guifg=#999999 guibg=#1D2021

hi PreProc       guifg=#239b56
hi Question      gui=none guifg=#FD971F
hi Search        guifg=#1D2021 guibg=#FD971F
hi SignColumn    guifg=#239b56 guibg=#1D2021
hi Special       guifg=#2ECC71
hi SpecialKey    guifg=#2ECC71
if has("spell")
    hi SpellBad      gui=undercurl guisp=#DC0000
    hi SpellCap      gui=undercurl guisp=#00ffff
    hi SpellLocal    gui=undercurl guisp=#0000ff
    hi SpellRare     gui=undercurl guisp=#2ECC71
endif
hi Structure                            guifg=#2ECC71
hi Statement     gui=none               guifg=#F4D03F
hi StatusLine    gui=none guibg=#228822 guifg=#1D2021
hi StatusLineNC  gui=none guibg=#336633 guifg=#1D2021
hi TabLine       guibg=#1D2021 guifg=#228822
hi TabLineFill   guibg=#1D2021 guifg=#226622
hi TabLineSel    guibg=#228822 guifg=#1D2021
hi Title         guifg=#2ECC71 guibg=none
hi Todo          gui=bold guibg=#336633 guifg=#FFFFFF
hi Type          gui=none      guifg=#458588
hi Underlined    gui=underline guifg=#336633
hi Visual                      guibg=#504945
hi VisualNOS     guifg=#1D2021 guibg=#228822
hi VertSplit     guifg=#336633
hi User1         gui=none guibg=#228822 guifg=#DC0000
hi WarningMsg    guifg=#1D2021 guibg=#007A7A
hi WildMenu      guifg=#458588 guibg=#282828

" **********************************************************************************************************************************
" Common groups that link to other highlight definitions.
hi link Comment         LineNr

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Function
hi link String          Constant

hi link Float           Number

hi link Define          PreProc
hi link Include         PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc


hi link Delimiter       Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Tag             Special


hi link Repeat          Statement
hi link Operator        Statement
hi link Conditional     Statement
hi link Exception       Statement
hi link Keyword         Statement
hi link Label           Statement

hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type


set background=dark
" ********************************** ADD SUPPORTS ***********************************************************************
