vim.g.startify_custom_header = '[]'
vim.g.startify_session_persistence = 1
vim.g.startify_change_to_vcs_root = 1

local function formatDirs(files)
  local results = {}
  for _, file in ipairs(files) do
    table.insert(results, { line = file, path = file })
  end
  return results
end

--[[ returns all modified files of the current git directory ]]
local function gitModified()
  local files = vim.fn.systemlist("git ls-files -m 2>/dev/null")
  return formatDirs(files)
end

local function gitUntracked()
  local files = vim.fn.systemlist("git ls-files -o --exclude-standard 2>/dev/null")
  return formatDirs(files)
end

vim.g.startify_commands = {
  { h = { "Vim Help", "help" } },
  { r = { "Vim Reference", "help reference" } },
}

vim.g.startify_bookmarks = {
  { b = '~/Documents/_code/_projects/blog.rphuber' },
  { c = '~/Documents/_code/dotfiles/nvim/init.lua' },
}

vim.g.startify_lists = {
  { type = "dir", header = { "   Current Directory: " .. vim.fn.getcwd() } },
  { type = "files", header = { "   Files: " } },
  { type = "sessions", header = { "   Sessions: " } },
  { type = gitModified, header = { "   git modified" }, },
  { type = gitUntracked, header = { "   git untracked" }, },
  -- { type = "commands", header = { "   Commands: " } },
  { type = "bookmarks", header = { "   Bookmarks: " } },
}
