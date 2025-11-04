return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLuz",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  opts = {

  },
  keys = function()
    local fzf = require("fzf-lua")
    local searhSymbols =  function()
    require("fzf-lua").lsp_document_symbols({
        regex_filter = symbols_filter,
    })
    end

    return {

        { "<c-j>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
        { "<c-k>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
        -- find
        { "<leader><space>", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
        { "<leader>ff", fzf.files, desc = "Find Files (Root Dir)" },
        { "<c-p>",      fzf.files, desc = "Find Files (Root Dir)" },
        { "<leader>fg", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
        { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
        -- search
        { "<leader>/", fzf.live_grep, desc = "Grep (Root Dir)" },
        { "<leader>sg", fzf.live_grep, desc = "Grep (Root Dir)" },
        { "<c-s-f>", fzf.live_grep, desc = "Grep (Root Dir)" },
        { "<leader>sb", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
        { "<leader>ss", searhSymbols, desc = "Goto Symbol" },
        { "@", searhSymbols, desc = "Goto Symbol" },
        -- git
        { "<leader>gc", "<cmd>FzfLua git_commits<CR>", desc = "Commits" },
        { "<leader>gs", "<cmd>FzfLua git_status<CR>", desc = "Status" },
    }
  end,
}
