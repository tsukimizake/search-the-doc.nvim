local api = vim.api

local function run(input)
  local typeinfo = "tableinternal "
  for key, value in pairs(input) do
    typeinfo = typeinfo .. key .. " "
  end
  api.nvim_echo({{"mbeu"}}, true, {})
end

return {
  run = run
}
