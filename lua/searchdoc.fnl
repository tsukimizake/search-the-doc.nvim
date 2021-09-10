
(local curl (require :curl))
(local api vim.api)

(local response (curl.easy {
    :url "http://httpbin.org/get"
    :httpheader  [
      "X-Test-Header1: Header-Data1"
      "X-Test-Header2: Header-Data2"
    ]
    :writefunction  io.stderr
            }))
(fn run [input]
  (api.nvim_echo [[response]] true {}))
{:run run}
