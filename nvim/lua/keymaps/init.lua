local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

vim.g.mapleader = ' '
map("n","<Leader>qq", ":q!<CR>", default_opts)
map("n","<Leader>ff", ":Telescope find_files<CR>", default_opts)
map("n","<Leader>gf", ":Telescope git_files<CR>", default_opts)
map("n","<Leader>lg", ":Telescope live_grep<CR>", default_opts)
map("n","<Leader>gs", ":Telescope grep_string<CR>", default_opts)
map("n","<Leader>b", ":Telescope buffers<CR>", default_opts)
map("n","<Leader>tt", ":TagbarToggle<CR>", default_opts)
map("n","<Leader>nt", ":NvimTreeToggle<CR>", default_opts)
map("n","<Leader>st", ":ToggleTerm<CR>", default_opts)
map("n","<Leader>sr", ":Telescope lsp_references<CR>", default_opts)
map("n","<Leader>sd", ":Telescope lsp_definitions<CR>", default_opts)

-- Mantener modo visual tras indentar
map("v","<", "<gv", default_opts)
map("v",">", ">gv", default_opts)

-- Centrar busquedas en la mitad de la pantalla
map("n","n","nzzzv", default_opts)
map("n","N","Nzzzv", default_opts)

map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", default_opts)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", default_opts)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", default_opts)
map("n", "gw", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", default_opts)
map("n", "gw", "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>", default_opts)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", default_opts)
map("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", default_opts)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", default_opts)
map("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", default_opts)
map("n", "<leader>af", "<cmd>lua vim.lsp.buf.code_action()<cr>", default_opts)
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", default_opts)
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>", default_opts)

