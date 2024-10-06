--[[
   NOTE:
  - :help lua-guide
  - (or HTML version): https://neovim.io/doc/user/lua-guide.html
  - :help
  - If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.
  - For options doc `:help vim.opt`
  - For more details and options `:help option-list`
--]]
--
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Explorer
vim.keymap.set('n', '<leader>v', vim.cmd.Ex)

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indent and tab settings
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Disable wrapping lines
vim.opt.wrap = false

-- Search highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.swapfile = false
vim.opt.backup = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
--
-- Show threshold column
vim.opt.colorcolumn = '80'

vim.opt.isfname:append '@-@'
-- Decrease update time
vim.opt.updatetime = 50

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 50

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
--
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'

  -- Alternative option
  -- vim.g.clipboard = {
  --     name = "tmux clipboard",
  --     copy = {
  --         ["+"] = "pbcopy",
  --         ["*"] = "pbcopy",
  --     },
  --     paste = {
  --         ["+"] = "pbpaste",
  --         ["*"] = "pbpaste",
  --     },
  --     cache_enabled = true,
  -- }
end)
