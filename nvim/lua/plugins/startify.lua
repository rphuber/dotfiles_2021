vim.g.startify_custom_header = '[]'
vim.g.bookmarks = { '~/.config/nvim/init.lua' }
vim.g.startify_session_persistence = 1
vim.g.startify_change_to_vcs_root = 1

vim.g.startify_lists = {
  { type = "dir", header = { "   Current Directory: " .. vim.fn.getcwd() } },
  { type = "files", header = { "   Files: " } },
  { type = "sessions", header = { "   Sessions: " } },
  { type = "bookmarks", header = { "   Bookmarks: " } },
  { type = "commands", header = { "   Commands: " } },
}
