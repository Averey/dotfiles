return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- ✅ 开启当前行 blame
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 文字显示在行尾
      delay = 300, -- 延迟（毫秒）
      ignore_whitespace = true,
    },
    current_line_blame_formatter = "  <author>, <author_time:%Y-%m-%d> - <summary>",
  },
}
