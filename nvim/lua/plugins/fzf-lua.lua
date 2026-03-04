return {
  "ibhagwan/fzf-lua",
  keys = {
    { "<C-p>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<c-s-f>", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader><space>", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    {
      "@",
      function()
        require("fzf-lua").lsp_document_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol",
    },
  },
}
