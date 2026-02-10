return {
  "folke/persistence.nvim",
  event = { "BufReadPre", "VimEnter" }, -- load on startup or file open
  opts = {
    dir = vim.fn.stdpath("state") .. "/sessions/", -- where sessions are stored
    need = 1, -- minimum number of buffers to save session
    branch = true, -- separate sessions per git branch
  },
  config = function(_, opts)
    local persistence = require("persistence")
    persistence.setup(opts)
    
    if vim.fn.argc() == 0 then
      persistence.load()
    end

    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function()
        persistence.save()
      end,
    })
  end,
}
