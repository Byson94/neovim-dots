return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    keys = {
        { "<leader>mp", "<cmd>PeekOpen<cr>", desc = "Open Peek Markdown Preview" },
    },
    config = function()
        require("peek").setup({
            app = "browser"
        })
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
}
