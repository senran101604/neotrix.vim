" **********************************************************************************************************************************
" Filename:      neotrix.vim
" Last Modified: Before new year of 2020 12/30/2020
" Author:    SenRan (senran101604@gmail.com)
" Description:   Simple and Nice Vim\Neovim colorscheme.
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
    let s:neotrix_dark_contrast = "galaxy"
endif

if exists("g:neotrix_italicize_comments")
  let s:neotrix_italicize_comments = g:neotrix_italicize_comments
else
  let s:neotrix_italicize_comments = 0
endif

if exists("g:neotrix_italicize_strings")
  let s:neotrix_italicize_strings = g:neotrix_italicize_strings
else
  let s:neotrix_italicize_strings = 0
endif

set background=dark

" Character under the cursor
hi Cursor        guifg=#1D2021 guibg=#FFFFF0
" like Cursor, but used when in IME mode
hi CursorIM      guifg=#1D2021 guibg=#336633
" used for the columns set with 'colorcolumn'
hi ColorColumn   guibg=#1D2021

" Generic constant
hi Constant      guifg=#CB4335
" Number constant: 234, 0xff
hi Number        guifg=#A569BD

" debugging statements
hi Debug         guifg=#DC0000 guibg=#1D2021

" DIff modes
hi DiffAdd       guifg=#1D2021 guibg=#007200
hi DiffChange    guifg=#1D2021 guibg=#007200
hi DiffDelete    guifg=#1D2021 guibg=#DC0000
hi DiffText      guifg=#28B463 guibg=#1D2021

hi Directory     gui=bold guifg=#2ECC71 guibg=NONE
" any erroneous construct
hi Error         gui=bold guifg=#FFFFF0 guibg=#DC0000
hi Folded        guifg=#20DE20 guibg=#1D2021
hi FoldColumn    guifg=#20DE20 guibg=#1D2021
" Funcion name (also: methods for classes)
hi Function      guifg=#73C6B6
" Variable name self, this etc.
hi Identifier    gui=NONE guifg=#FD971F
hi IncSearch     guifg=#1D2021 guibg=#FD971F

" Match paired bracket under the cursor
hi MatchParen    guifg=#2ECC71
" --Insert-- etc.
hi ModeMsg       guifg=#2ECC71 gui=bold
" More prompt: -- More --
hi MoreMsg       guifg=#2ECC71 gui=bold
hi NonText       guifg=#FD971F
hi LineNr        guifg=#504945

if s:neotrix_dark_contrast == "galaxy_hard"
    hi Normal        guifg=#FFFFF0 guibg=#17202A
    hi CursorLine    guibg=#1B2631
elseif s:neotrix_dark_contrast == "retro"
    hi Normal        guifg=#FFFFF0 guibg=#1A1A1A
    hi CursorLine    guibg=#282828
elseif s:neotrix_dark_contrast == "retro_hard"
    hi Normal        guifg=#FFFFF0 guibg=#0A0A0A
    hi CursorLine    guibg=#1D2021
else
    hi Normal        guifg=#FFFFF0 guibg=#1B2631
    hi CursorLine    guibg=#17202A
end

" any comment
if s:neotrix_italicize_comments == 1
  hi Comment       guifg=#228822 gui=italic
else
  hi Comment       guifg=#228822
end

" String constant:
if s:neotrix_italicize_strings == 1
  hi String        guifg=#CB4335 gui=italic
else
  hi String        guifg=#CB4335
end


" Popup menu: normal item
hi Pmenu         guifg=#239b56 guibg=#282828
" Popup menu: selected item
hi PmenuSel      guifg=#1D2021 guibg=#999999
" Popup menu: scrollbar
hi PmenuSbar     guifg=#1D2021 guibg=#239b56
" Popup menu: scrollbar thumb
hi PmenuThumb    guifg=#999999 guibg=#1D2021

" Generic preprocessor
hi PreProc       guifg=#FD971F

" 'Press enter' prompt and yes/no questions
hi Question      gui=NONE guifg=#FD971F

"Last  Search pattern
hi Search        guifg=#1D2021 guibg=#FD971F

hi SignColumn    guifg=#239b56 guibg=#1D2021

" any special symbol
hi Special       guifg=#999999
hi SpecialKey    guifg=#999999

if has("spell")
  " word that is not recognized by the spellchecker
    hi SpellBad      gui=undercurl guisp=#DC0000
    " Word that shoud start with a capital
    hi SpellCap      gui=undercurl guisp=#00ffff
    " Word that is used in another region
    hi SpellLocal    gui=undercurl guisp=#0000ff
    " Word that is used rarely
    hi SpellRare     gui=undercurl guisp=#2ECC71
endif

" struct, union, enum, etc.
hi Structure     guifg=#2ECC71
" Generic statement
hi Statement     gui=NONE               guifg=#F4D03F

" Status line of current window
hi StatusLine    gui=NONE guibg=#228822 guifg=#1D2021
" status lines of not-current windows
hi StatusLineNC  gui=NONE guibg=#336633 guifg=#1D2021

" Tab lines
hi TabLine       guibg=#1D2021 guifg=#228822
hi TabLineFill   guibg=#1D2021 guifg=#228822
hi TabLineSel    guibg=#228822 guifg=#1D2021

" Titles for output from :set all, :autocmd, etc.
hi Title         guifg=#2ECC71 guibg=NONE

" keywords TODO FIXME and XXX
hi Todo          gui=bold guibg=#336633 guifg=#FFFFF0
" int, long, char, etc.
hi Type          gui=NONE      guifg=#458588

" Text that stands out
hi Underlined    gui=underline guifg=#336633

" Visual Mode Selection
hi Visual                      guibg=#282828

" The column separating vertically split windows
hi VertSplit     guifg=#282828

" Warning messages
hi WarningMsg    guifg=#DC0000 guibg=#007A7A

" Current match in wildmenu completion
hi WildMenu      guifg=#458588 guibg=#282828

" **********************************************************************************************************************************
" Common groups that link to other highlight definitions.


" a character constant
hi link Character       Constant
" Boolean constant: TRUE, false
hi link Boolean         Number
" Floating point constant: 2.3e10
hi link Float           Number
" Preprocessor #define
hi link Define          PreProc
" Preprocessor #include, import etc.
hi link Include         PreProc
" same as Define
hi link Macro           PreProc
" Preprocessor #if, #else, #endif, etc.
hi link PreCondit       PreProc

" Character that needs attention
hi link Delimiter       Special
" special character in a constant
hi link SpecialChar     Special
" special things inside a comment
hi link SpecialComment  Special
" you can use CTRL-] on this
hi link Tag             Special

" for, do, while, etc.
hi link Repeat          Statement
""sizeof", "+", "*", etc.
hi link Operator        Statement
" if, then, else, endif, swicth, etc.
hi link Conditional     Statement
" try, catch, throw
hi link Exception       Statement
" Any other keyword
hi link Keyword         Statement
" case, default, etc.
hi link Label           Statement

" static, register, volatile, etc
hi link StorageClass    Special
" typedef
hi link Typedef         Type

" Error messages on the command line
hi link ErrorMsg        Error

" Visual
hi link VisualNOS       Visual
" ********************************** ADD SUPPORTS OR REFRACTRO THE CODE ***********************************************************************
