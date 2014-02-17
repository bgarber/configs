" Vim syntax file
" Language:		Haserl
" Maintainer:		Scott Smith <scott@grimblefritz.com>
" Maintainer URL:	http://haserl.grimblefritz.com
" Package URL:		http://haserl.sourceforge.net
" Credits:		Based on eruby.vim by Doug Kearns <dougkearns@gmail.com>
" Installation:
"    Copy this file (haserl.vim) to your ~/.vim/syntax directory.
"
"    To automatilcally load this file when a haserl script is opened,
"    add the following lines to ~/.vim/scripts.vim:
"
"        if did_filetype()
"            finish
"        endif
"        if getline(1) =~ '^#!.*[/\\]haserl\>'
"            setf haserl
"        endif
"
"    You don't have to restart vim for this to take effect.  It is a good
"    idea to read ":he new-filetype" so that you know what is going on,
"    and why the above works.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'haserl'
endif

let b:is_bash=1

if version < 600
  so <sfile>:p:h/html.vim
  syn include @shTop <sfile>:p:h/sh.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
  syn include @shTop syntax/sh.vim
endif

syn cluster haserlRegions contains=haserlShBang,haserlIf,haserlElif,haserlElse,haserl,Endif,haserlCase,haserlWhen,haserlOtherwise,haserlEndcase,haserlWhile,haserlEndwhile,haserlUntil,haserlEnduntil,haserlFor,haserlEndfor,haserlUnless,haserlElun,haserlUnelse,haserlEndunless,haserlExpression,haserlComment,haserlBlock,haserlCommand

syn region  haserlShBang      matchgroup=haserlDelimiter start="^#!.*haserl"  end="$"  contains=@shTop            containedin=ALLBUT,@haserlRegions keepend oneline
syn region  haserlBlock       matchgroup=haserlDelimiter start="<%"           end="%>" contains=@shTop            containedin=ALLBUT,@haserlRegions
syn region  haserlInclude     matchgroup=haserlDelimiter start="<%in"         end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlIf          matchgroup=haserlDelimiter start="<%if"         end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlElif        matchgroup=haserlDelimiter start="<%elif"       end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlElse        matchgroup=haserlDelimiter start="<%else"       end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEndif       matchgroup=haserlDelimiter start="<%endif"      end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlCase        matchgroup=haserlDelimiter start="<%case"       end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlWhen        matchgroup=haserlDelimiter start="<%when"       end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlOtherwise   matchgroup=haserlDelimiter start="<%otherwise"  end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEndcase     matchgroup=haserlDelimiter start="<%endcase"    end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlWhile       matchgroup=haserlDelimiter start="<%while"      end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEndwhile    matchgroup=haserlDelimiter start="<%endwhile"   end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlUntil       matchgroup=haserlDelimiter start="<%until"      end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEnduntil    matchgroup=haserlDelimiter start="<%enduntil"   end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlFor         matchgroup=haserlDelimiter start="<%for"        end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEndfor      matchgroup=haserlDelimiter start="<%endfor"     end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlUnless      matchgroup=haserlDelimiter start="<%unless"     end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlElun        matchgroup=haserlDelimiter start="<%elun"       end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlUnelse      matchgroup=haserlDelimiter start="<%unelse"     end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlEndunless   matchgroup=haserlDelimiter start="<%endunless"  end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlExpression  matchgroup=haserlDelimiter start="<%="          end="%>" contains=@shTop	          containedin=ALLBUT,@haserlRegions
syn region  haserlComment     matchgroup=haserlDelimiter start="<%#"          end="%>" contains=shCommentGroup    containedin=ALLBUT,@haserlRegions keepend
syn region  haserlBlock       matchgroup=haserlDelimiter start="<% done"      end="%>" contains=shCommentGroup    containedin=ALLBUT,@haserlRegions
syn region  haserlBlock       matchgroup=haserlDelimiter start="<% ;;"        end="%>" contains=shCommentGroup    containedin=ALLBUT,@haserlRegions

" Define the default highlighting.
hi def link haserlDelimiter Delimiter
hi def link haserlComment   Comment

let b:current_syntax = "haserl"

if main_syntax == 'haserl'
  unlet main_syntax
endif

" vim: nowrap sw=2 sts=2 ts=8 ff=unix:
