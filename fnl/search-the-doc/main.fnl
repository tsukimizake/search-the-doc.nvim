(module search-the-doc.main)
(fn init []
  (nvim_command "command! -nargs=1 SearchDoc lua search-the-doc.main.run")
  )
(fn run [input]
    (local http (require "http.request"))
    (local req (http.new_from_uri "https://www.google.com"))
    (let [(headers stream) (req:go)]
      (local body (stream:get_body_as_string))
      (print body)))

{:init init :run run}

