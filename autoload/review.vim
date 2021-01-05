
if exists('g:loaded_vimreview_auto')
	finish
endif
let g:loaded_vimreview_auto = 1

let s:plugin_path = expand('<sfile>:p:h:h')
echo s:plugin_path

function! review#Setreview() abort
	execute('NeoSnippetSource ' . s:plugin_path . '/snippets/review.snip')
	execute('source ' . s:plugin_path . '/syntax/syntax.vim')
	execute('set dictionary=' . s:plugin_path . '/dictionary/review.dict')
endfunction

