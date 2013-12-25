" " Pretty colorscheme "
"
" File:         sapphire256.vim
" URL:          github.com/ataraxer/sapphire256.vim
" Author:       Anton Karamanov (ataraxer@gmail.com)
" Version:      1.0.000
" Last Updated: December 25, 2013
" License:      MIT
"
" Copyright (c) 2013 Anton Karamanov
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function! s:hi(item, fg, bg)
  if empty(a:bg)
    execute printf("highlight %s ctermfg=%s", a:item, a:fg)
  elseif empty(a:fg)
    execute printf("highlight %s ctermbg=%s", a:item, a:bg)
  else
    execute printf("highlight %s ctermfg=%s ctermbg=%s", a:item, a:fg, a:bg)
  endif
endfunction

let s:seoul256_background = 8
let s:normal = 15
let s:keyword = 38
let s:string = 81
let s:number = 227 " yellow
let s:number = 219

set t_Co=256

silent! unlet g:colors_name
hi clear
if exists("syntax_on")
  syntax reset
endif
call s:hi('Normal', 15, s:seoul256_background)
set background=dark

call s:hi('LineNr', 251, s:seoul256_background)
call s:hi('Visual', '', 23)
call s:hi('VisualNOS', '', 23)

call s:hi('Comment', 81, '')
call s:hi('Number', s:number, '')
call s:hi('Float', s:number, '')
call s:hi('Boolean', s:number, '')
call s:hi('String', 123, '')
call s:hi('Constant', 160, '')
call s:hi('Character', 160, '')
call s:hi('Delimiter', 15, '')
call s:hi('StringDelimiter', 160, '')
call s:hi('Statement', s:keyword, '')
" case, default, etc.
" hi Label ctermfg=

" 74, 39

" if else end
call s:hi('Conditional', s:keyword, '') " Good

" while end
call s:hi('Repeat', 68, '')
call s:hi('Todo', 161, 'NONE') "s:seoul256_background - 2
call s:hi('Function', 187, '')

" Macros
call s:hi('Define', 173, '')
call s:hi('Macro', 173, '')
call s:hi('Include', 173, '')
call s:hi('PreCondit', 173, '')


" #!
call s:hi('PreProc', 143, '')

" @abc
call s:hi('Identifier', 12, '')

" AAA Abc
call s:hi('Type', 179, '')

" + - * / <<
call s:hi('Operator', 15, '')

" super yield
call s:hi('Keyword', 168, '')

" raise
call s:hi('Exception', 161, '')
"
" hi StorageClass ctermfg=
call s:hi('Structure', 116, '')
" hi Typedef ctermfg=

call s:hi('Error', 252, 52)
call s:hi('ErrorMsg', 252, 52)
call s:hi('Underlined', 181, '')

" set textwidth=80
" set colorcolumn=+1
call s:hi('ColorColumn', '', s:seoul256_background - 1)

" GVIM only
" hi Cursor ctermfg=
" hi CursorIM ctermfg=

" set cursorline cursorcolumn
call s:hi('CursorLine', '', s:seoul256_background - 1)
call s:hi('CursorLineNr', 131, s:seoul256_background - 1)
call s:hi('CursorColumn', '', s:seoul256_background - 1)

call s:hi('Directory', 187, '')

call s:hi('DiffAdd', 'NONE', 24)
call s:hi('DiffDelete', 'NONE', 95)
call s:hi('DiffChange', 'NONE', 240)
call s:hi('DiffText', 'NONE', 52)

call s:hi('DiffText', 'NONE', 52)
call s:hi('VertSplit', s:seoul256_background - 2, s:seoul256_background - 2)
call s:hi('Folded', 101, s:seoul256_background + 1)

" set foldcolumn=1
call s:hi('FoldColumn', 144, s:seoul256_background + 1)

call s:hi('MatchParen', 232, '')

" -- INSERT --
call s:hi('ModeMsg', 173, '')

" let &showbreak = '> '
call s:hi('NonText', 101, '')

call s:hi('MoreMsg', 173, '')

" Popup menu
call s:hi('Pmenu', s:seoul256_background + 1, 224)
call s:hi('PmenuSel', 252, 89)
call s:hi('PmenuSbar', '', 65)
call s:hi('PmenuThumb', '', 23)

call s:hi('Search', 252, 24)
call s:hi('IncSearch', 220, s:seoul256_background + 1)

" String delimiter, interpolation
call s:hi('Special', 216, '')
" hi SpecialChar ctermfg=
" hi SpecialComment ctermfg=
" hi Tag ctermfg=
" hi Debug ctermfg=

" :map, listchars
call s:hi('SpecialKey', 59, '')

" TODO: spell check
call s:hi('SpellBad', 252, 95)
call s:hi('SpellCap', 252, 95)
call s:hi('SpellLocal', 252, 95)
call s:hi('SpellRare', 252, 95)

"
call s:hi('StatusLine', 95, 187)
call s:hi('StatusLineNC', s:seoul256_background + 2, 187)
call s:hi('TabLineFill', s:seoul256_background + 2, '')
call s:hi('TabLineSel', 187, 23)
call s:hi('TabLine', s:seoul256_background + 12, s:seoul256_background + 4)
call s:hi('WildMenu', 95, 184)

" :set all
call s:hi('Title', 181, '')

" TODO
call s:hi('Question', 179, '')

" Search hit bottom
call s:hi('WarningMsg', 179, '')

" ==== HASKELL ====
call s:hi('hsImport', s:keyword, '')
call s:hi('hsImportLabel', s:keyword, '')
call s:hi('hs_Function', 153, '')
call s:hi('hs_FunctionName', 153, '')
call s:hi('hs_hlFunctionName', 153, '')

" ==== PERL ====
call s:hi('perlSubName', 153, '')
call s:hi('perlSharpBang', 81, '')
call s:hi('perlRepeat', s:keyword, '')
call s:hi('perlFunction', s:keyword, '')
call s:hi('perlSpecialString', 207, '')
call s:hi('perlSpecialMatch', 207, '')

" ==== PYTHON ====
call s:hi('pythonFunction', 153, '')
call s:hi('pythonRepeat', s:keyword, '')
call s:hi('pythonInclude', s:keyword, '')

" ==== COFFEE SCRIPT ====
call s:hi('coffeeKeyword', s:keyword, '')
call s:hi('coffeeParen', s:normal, '')
call s:hi('coffeeBracket', s:normal, '')
call s:hi('coffeeCurly', s:normal, '')
call s:hi('coffeeSpecialVar', s:keyword, '')
call s:hi('coffeeRepeat', s:keyword, '')
call s:hi('coffeeInterp', s:normal, '')
call s:hi('coffeeInterpDelim', s:number, '')
call s:hi('coffeeEscape', 207, '')

let g:colors_name = "ataraxer"