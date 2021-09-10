" if exists('g:loaded_search_the_doc') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

lua require 'searchdoc'

function! SearchDocWrapper(s)
  let LuaFunc = luaeval('require("searchdoc").run') 
  call LuaFunc(a:s)
endfunction

command! -nargs=1 SearchDoc call SearchDocWrapper(<f-args>)

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

" let g:loaded_search_the_doc = 1
