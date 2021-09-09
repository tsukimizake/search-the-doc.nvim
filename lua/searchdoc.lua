local api = vim.api

local function run(input)
  api.nvim_echo({{input}}, true, {})
end

return {
  run = run
}
