local curl = require("curl")
local api = vim.api
local response = curl.easy({httpheader = {"X-Test-Header1: Header-Data1", "X-Test-Header2: Header-Data2"}, url = "http://httpbin.org/get", writefunction = io.stderr})
local function run(input)
  return api.nvim_echo({{"gau"}, {response}}, true, {})
end
return {run = run}
