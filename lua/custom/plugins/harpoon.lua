return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>.a", function() harpoon:list():append() end, { desc = 'Add current buffer to Harpoon'})
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Open floating Harpoon box'})

        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = 'Go to first line in Harpoon'})
        vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = 'Go to second line in Harpoon'})
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = 'Go to third line in Harpoon'})
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = 'Go to fourth line in Harpoon'})

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = 'Toggle previous buffer'})
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = 'Toggle next buffer'})
    end
}
