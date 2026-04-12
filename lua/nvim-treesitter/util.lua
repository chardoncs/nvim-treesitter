local M = {}

--- @param filename string
--- @return string
function M.read_file(filename)
  local file = assert(io.open(filename, 'r'))
  local r = file:read('*a')
  file:close()
  return r
end

--- @param filename string
--- @param content string
function M.write_file(filename, content)
  local file = assert(io.open(filename, 'w'))
  file:write(content)
  file:close()
end

---@param arr any[]
---@param val any
---@return boolean
function M.has_value(arr, val)
  for _, value in ipairs(arr) do
    if value == val then
      return true
    end
  end
  return false
end

return M
