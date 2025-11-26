-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: -- Add any additional options here

local o = vim.opt

o.autoindent = true -- Copy indent from current line when starting new one (default: true)
-- o.softtabstop = 2 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
-- o.smarttab = true -- Insert nunmber of spaces defined by shiftwidth
-- o.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
-- o.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
o.hlsearch = false -- Set highlight on search (default: true)
o.incsearch = true -- enable incremental search
o.whichwrap = "bs<>[]hl" -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
-- o.numberwidth = 4 -- Set number column width to 4 (default: 4)
o.swapfile = false -- Creates a swapfile (default: true)
o.showtabline = 2 -- Always show tabs (default: 1)
-- o.backspace = "indent,eol,start" -- Allow backspace on (default: 'indent,eol,start')
-- o.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
o.fileencoding = "utf-8" -- The encoding written to a file (default: 'utf-8')
o.breakindent = true -- Enable break indent (default: false) When this option is enabled, wrapped lines will be visually indented to align with the start of the original line, making the text easier to read.
o.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
o.iskeyword:append("-") -- Hyphenated words recognized by searches (default: does not include '-')
-- o.formatoptions:remove({ "c", "r", "o" }) -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
-- o.runtimepath:remove("/usr/share/vim/vimfiles") -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)

o.colorcolumn = "120" -- show wrap column
o.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- see `:help 'listchar'`

-- Ensure the undo directory exists
local undodir = vim.fn.stdpath("data") .. "/undo"
if not vim.fn.isdirectory(undodir) then
  vim.fn.mkdir(undodir, "p")
end

-- Set the undodir option
o.undodir = undodir
o.undofile = true
