vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moves block of code easily
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- jumps to middle of the file
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- searched term stays in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- pastes over highlighted, maintaining the previously yanked value there
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- takes to register the copy/paste system, so lines can be pasted outside vim
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- replaces the piece of text globally in the file
vim.keymap.set("n", "<leader>d", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- replace incidence of searched word
vim.keymap.set("n", "<leader>c", "cgn")

-- gives file extension automatically
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- opens vim packieir
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/schaer/packer.lua<CR>");
vim.keymap.set("n", "<leader>map", "<cmd>e ~/.config/nvim/lua/schaer/remap.lua<CR>");

-- shoutout!!
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
