""syntax keyword txtComment コメント
""highlight link txtComment Comment

""syntax match txtError /hoge/
""highlight link txtError Error

syntax region textComment start=/#@#/ end=/\n/
syntax match textComment containedin=ALL /@<comment>{.*}/
highlight link textComment Comment

syntax match Inline /@<.\{-}>/
highlight Inline ctermfg=Green

syntax match Builder /\(html\|latex\|idgxml\|markdown\|top\)/ contained
highlight Builder ctermfg=red

syntax match Splite /\(,\||\)/
highlight Splite ctermfg=white

syntax region Chapter start=/^= / end=/\n/
highlight Chapter ctermfg=lightcyan

syntax region Section start=/^== / end=/\n/
highlight Section ctermfg=lightyellow

syntax region SubSection start=/^=== / end=/\n/
highlight SubSection ctermfg=yellow

syntax region SubsubSection start=/^==== / end=/\n/
syntax region SubsubSection start=/^===== / end=/\n/
syntax region SubsubSection start=/^====== / end=/\n/
highlight SubsubSection ctermfg=blue

syntax match Bullets /^ \** /
syntax match Bullets /^ [0-9]\. /
syntax match Bullets /^ [0-9][0-9]\. /
syntax region Bullets start=/^ : */ end=/\n/
highlight Bullets ctermfg=darkmagenta

syntax match Column /^=*\[column\]/
syntax match Column /^=*\[\/column\]/
highlight Column ctermfg=green

syntax region Block matchgroup=BlockTag start=/\/\/\l\{-1,}\(\(\[\l*\]\)\{,}\|\){$/ end=/^\/\/}$/ contains=ALL
highlight BlockTag ctermfg=blue

let b:current_syntax = 'review'
