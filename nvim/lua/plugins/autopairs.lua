return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    npairs.setup({
      check_ts = true,      -- enable Treesitter integration
      ts_config = {
        lua = { "string" }, -- don't add pairs inside strings
      },
      fast_wrap = {},       -- optional: enables fast wrapping
    })

    -- optional: integrate with nvim-cmp if you use it
    local cmp_status_ok, cmp = pcall(require, "cmp")
    if cmp_status_ok then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}

