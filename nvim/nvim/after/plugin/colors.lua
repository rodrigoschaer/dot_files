function ActiveLineColorHL()
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF00B7", bold = true })
end

ActiveLineColorHL()
