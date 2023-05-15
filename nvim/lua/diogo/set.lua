vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.termguicolors = true
-- vim.cmd [[colorshceme gruvbox]]

vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.o.encoding = "utf-8"


-- Filenames like *.xml, *.html, *.xhtml, ...
-- These are the file extensions where this plugin is enabled.
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'

-- Filenames like *.xml, *.xhtml, ...
-- This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx,*.xml'

-- Filetypes like xml, html, xhtml, ...
-- These are the file types where this plugin is enabled.
vim.g.closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx'

-- Filetypes like xml, xhtml, ...
-- This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filetypes = 'xhtml,jsx,xml,jsx,js,tsx'

-- Integer value [0|1]
-- This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
vim.g.closetag_emptyTags_caseSensitive = 1

-- Dictionary
-- Disables auto-close if not in a "valid" region (based on filetype)
vim.g.closetag_regions = {
  ['typescript.tsx'] = 'jsxRegion,tsxRegion',
  ['javascript.jsx'] = 'jsxRegion',
  ['typescriptreact'] = 'jsxRegion,tsxRegion',
  ['javascriptreact'] = 'jsxRegion',
}

-- Shortcut for closing tags, default is '>'
vim.g.closetag_shortcut = '>'

-- Add > at current position without closing the current tag, default is ''
--vim.g.closetag_close_shortcut = '<leader>>'
