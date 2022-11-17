local api = vim.api
 
 -- go to last loc when opening a buffer
  api.nvim_create_autocmd(
    "BufReadPost",
    { command = [[set autoindent]] }
  )
