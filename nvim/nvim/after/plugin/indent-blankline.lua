require("ibl").setup(
    {
        debounce = 100,
        indent = { char = "┆" },
        scope = { show_start = false, show_end = true },
        whitespace = {
            highlight = { "Function", "Label" },
            remove_blankline_trail = true,
        }
    }
)
