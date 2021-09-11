if has("nvim")
  lua require("search-the-doc.main").init()
  command! -nargs=1 SearchDoc lua require("search-the-doc.main").run()
endif
