" Vim color file - tango2_modified
" Author: Bryan Garber <spellcasterbryan@gmail.com>
" Skeleton genereted using http://bytefluent.com/vivify 2015-01-19

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "tango2_modified"

hi Normal         guifg=#EEEEEC guibg=#2E3436 guisp=#2E3436 gui=NONE ctermfg=254 ctermbg=236 cterm=NONE

hi Comment        guifg=#BABDB6 guibg=NONE guisp=NONE gui=italic ctermfg=250 ctermbg=NONE cterm=NONE

hi Constant       guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi String         guifg=#FCAF3E guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Character      guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Number         guifg=#AD7FA8 guibg=NONE guisp=NONE gui=bold ctermfg=139 ctermbg=NONE cterm=bold
hi Boolean        guifg=#729FCF guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi Float -- no settings --

hi Identifier     guifg=#AD7FA8 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Function       guifg=#9BCF8D guibg=NONE guisp=NONE gui=bold ctermfg=114 ctermbg=NONE cterm=bold

hi Statement      guifg=#729FCF guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi Conditional    guifg=#729FCF guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi Repeat         guifg=#729FCF guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi Label          guifg=#729FCF guibg=NONE guisp=NONE gui=bold ctermfg=110 ctermbg=NONE cterm=bold
hi Operator       guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Keyword        guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Exception      guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE

hi PreProc        guifg=#fce94f guibg=NONE guisp=NONE gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
"hi Include       guifg=#e9ba6e guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi Define        guifg=#fce94f guibg=NONE guisp=NONE gui=NONE ctermfg=226 ctermbg=NONE cterm=NONE
"hi Macro         guifg=#e9ba6e guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi PreCondit     guifg=#e9ba6e guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE

hi Type           guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi StorageClass   guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Structure      guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Typedef        guifg=#8AE234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE

hi Special        guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD
hi SpecialChar    guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD
hi Tag            guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD
hi Delimiter      guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD
hi SpecialComment guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD
hi Debug          guifg=#CE5C00 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=BOLD

"hi Underlined -- no settings --

"hi Ignore -- no settings --

"hi Error -- no settings --

hi Todo         guifg=#EBC450 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE

hi cConstant    guifg=#ad7fa8 guibg=NONE guisp=NONE gui=bold ctermfg=139 ctermbg=NONE cterm=bold

hi Search       guifg=#2e3436 guibg=#8f5902 guisp=#8f5902 gui=NONE ctermfg=236 ctermbg=94 cterm=NONE
"hi IncSearch -- no settings --

hi StatusLine   guibg=#babdb6 guifg=#555753 ctermbg=250 ctermfg=239
hi StatusLineNC guibg=#555753 guifg=#babdb6 ctermbg=239 ctermfg=250

hi Folded       guifg=NONE guibg=#d2d2d2 guisp=#d2d2d2 gui=NONE ctermfg=NONE ctermbg=252 cterm=NONE
"hi FoldColumn -- no settings --

hi PMenuSbar    guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi PMenuSel     guifg=#88dd88 guibg=#949698 guisp=#949698 gui=NONE ctermfg=114 ctermbg=246 cterm=NONE
hi PMenu        guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi PMenuThumb   guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsClass -- no settings --

"hi DiffAdd -- no settings --
"hi DiffText -- no settings --
"hi DiffDelete -- no settings --
"hi DiffChange -- no settings --

"hi TabLineSel -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi Title -- no settings --
"hi NonText -- no settings --
"hi ErrorMsg -- no settings --
hi LineNr guibg=NONE guifg=#eeeeec ctermbg=NONE ctermfg=254
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi EnumerationName -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guibg=#555753 guifg=#babdb6 ctermbg=239 ctermfg=250
hi Cursor guifg=#000000 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
"hi SpellLocal -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi Directory -- no settings --
"hi TabLine -- no settings --
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
"hi clear -- no settings --

