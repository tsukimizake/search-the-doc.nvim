if exists('g:loaded_search_the_doc') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

command! SearchDoc lua require'searchTheDoc'.run()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_search_the_doc = 1
