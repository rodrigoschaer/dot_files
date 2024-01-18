local dap = require("dap")
local dapui = require("dapui")

require("mason-nvim-dap").setup({
    automatic_setup = true,
    ensure_installed = { "codelldb" },
    handlers = {
        function(config)
            require('mason-nvim-dap').default_setup(config)
        end,
    }
})

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end




vim.keymap.set("n", "<leader>dbug", function() require("dap").continue() end)
vim.keymap.set("n", "<leader>bp", function() require("dap").toggle_breakpoint() end)
